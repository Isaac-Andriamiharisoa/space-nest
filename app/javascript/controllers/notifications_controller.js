import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    this.loadNotificationCount();
  }

  loadNotificationCount() {
    fetch("/notifications/count")
      .then(response => response.json())
      .then(data => {
        this.element.textContent = data.count;
      })
      .catch(error => console.error("Error loading notification count", error));
  }
}
