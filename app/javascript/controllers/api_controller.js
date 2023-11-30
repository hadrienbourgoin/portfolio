import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="api"
export default class extends Controller {
  static targets = ['select', 'search']

  connect() {
    this.searchTarget.innerHTML = '<a href=' + '/note-me-api?query=' + this.selectTarget.value + '>Search</a>'
  }

  searchapi() {
    this.searchTarget.innerHTML = '<a href=' + '/note-me-api?query=' + this.selectTarget.value + '>Search</a>'
  }
}
