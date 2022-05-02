import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ['citySelect', 'streetSelect']

  getCities(event) {
    let postalCode = event.target.value
    let target = this.citySelectTarget.id

    get(`/addresses/cities?postal_code=${postalCode}&target=${target}`, {
      responseKind: "turbo-stream"
    })
  }

  getStreets(event) {
    let city = event.target.selectedOptions[0]?.value
    let target = this.streetSelectTarget?.id

    get(`/addresses/streets?city=${city}&target=${target}`, {
      responseKind: "turbo-stream"
    })
  }
}
