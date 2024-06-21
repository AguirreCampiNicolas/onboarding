import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sortBy", "filterButtons", "productsContainer"]

  connect() {
    console.log("Stimulus controller connected")
    this.sortByTarget.addEventListener("change", this.applyFiltersAndSort.bind(this))
    this.filterButtonsTargets.forEach(button => {
      button.addEventListener("click", this.toggleFilter.bind(this))
    })
  }

  toggleFilter(event) {
    console.log("Filter toggled")
    event.currentTarget.classList.toggle("bg-blue-500")
    event.currentTarget.classList.toggle("bg-white")
    this.applyFiltersAndSort()
  }

  applyFiltersAndSort() {
    const filters = this.filterButtonsTargets
      .filter(button => button.classList.contains("bg-blue-500"))
      .map(button => button.dataset.filter)

    console.log("ACTIVE FILTERS")
    console.log(filters)

    const sortByValue = this.sortByTarget.value

    console.log('Filters:', filters)
    console.log('Sort by:', sortByValue)

    fetch(`/products?filters=${filters.join(",")}&sort_by=${sortByValue}`)
    .then(response => response.text())
    .then(html => {
      this.productsContainerTarget.innerHTML = html
    })
  }
}
