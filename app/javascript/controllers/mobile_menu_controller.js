import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile-menu"
export default class extends Controller {
  static targets = ['wrapper', 'menu'];

  connect() {
  }

  toggle() {
    if (this.menuTarget.ariaHidden === 'true') {
      this.menuTarget.classList.remove('hidden')
      this.menuTarget.setAttribute('aria-hidden', false)
    } else {
      this.menuTarget.classList.add('hidden');
      this.menuTarget.setAttribute('aria-hidden', true)
    }
  }
}
