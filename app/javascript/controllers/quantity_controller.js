import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["quantityMobileField", "quantityField", "totalField", "hiddenPriceField", "hiddenQuantityField"]

  increment() {
    let currentValue = parseInt(this.quantityFieldTarget.value, 10)
    this.quantityFieldTarget.value = currentValue + 1
    this.quantityMobileFieldTarget.value = currentValue + 1
    this.hiddenQuantityFieldTarget.value = this.quantityFieldTarget.value
    this.updateTotal()
  }

  decrement() {
    let currentValue = parseInt(this.quantityFieldTarget.value, 10)
    if (currentValue > 1) {
      this.quantityMobileFieldTarget.value = currentValue - 1
      this.quantityFieldTarget.value = currentValue - 1
      this.hiddenQuantityFieldTarget.value = this.quantityFieldTarget.value
      this.updateTotal()
    }
  }

  updateTotal() {
    let quantity = parseInt(this.quantityFieldTarget.value, 10)
    let price = parseFloat(this.hiddenPriceFieldTarget.value)
    let total = quantity * price
    this.totalFieldTarget.innerText = `$${total.toFixed(2)} + IVA`
  }
}
