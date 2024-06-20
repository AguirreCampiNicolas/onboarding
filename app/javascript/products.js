document.addEventListener("turbo:load", () => {
  const filterButtons = document.querySelectorAll(".filter-btn");
  const sortBy = document.getElementById("sort-by")

  // add event listeners
  sortBy.addEventListener("change", applyFiltersAndSort)

  filterButtons.forEach(button => {
    button.addEventListener("click", () => {
      button.classList.toggle("bg-blue-500")
      button.classList.toggle("bg-gray-300")
      applyFiltersAndSort()
    })
  })

  // functions
  function applyFiltersAndSort() {
    const activeFilters = Array.from(filterButtons)
      .filter(button => button.classList.contains("bg-gray-300"))
      .map(button => button.dataset.filter)

    const sortByValue = sortBy.value

    console.log('Filters:', activeFilters)
    console.log('Sort by:', sortByValue)
  }
});
