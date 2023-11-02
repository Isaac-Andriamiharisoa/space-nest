import { Application } from "@hotwired/stimulus"
import ShowPlanetController from './show_planet'

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.Stimulus.register('show-planet', ShowPlanetController)

export { application }
