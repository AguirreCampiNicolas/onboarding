import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["quantityField", "hiddenField"]

  increment() {
    let currentValue = parseInt(this.quantityFieldTarget.value, 10)
    this.quantityFieldTarget.value = currentValue + 1
    this.hiddenFieldTarget.value = this.quantityFieldTarget.value
  }

  decrement() {
    let currentValue = parseInt(this.quantityFieldTarget.value, 10)
    if (currentValue > 1) {
      this.quantityFieldTarget.value = currentValue - 1
      this.hiddenFieldTarget.value = this.quantityFieldTarget.value
    }
  }
}
