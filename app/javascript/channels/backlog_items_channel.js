# app/javascript/channels/backlog_items_channel.js
import consumer from "./consumer"

consumer.subscriptions.create("BacklogItemsChannel", {
  connected() {
    console.log("Connected to the backlog items channel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("Received data:", data)
    // Refresh the page or update the DOM
    location.reload()
  }
})
