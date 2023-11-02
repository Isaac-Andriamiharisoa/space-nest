import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = [ "bookingSection" ]

  bookNow() {
    this.bookingSectionTarget.scrollIntoViewIfNeeded()
  }
}
