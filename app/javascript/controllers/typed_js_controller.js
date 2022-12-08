import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      string: ["It's the most wonderful time of the year", "Merry Christmas"],
      typeSpeed: 50,
      loop: true
    })
  }
}
