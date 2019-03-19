// App.user_locations = App.cable.subscriptions.create "UserLocationChannel",
//   connected: ->
//     # Called when the subscription is ready for use on the server
//     console.log 'ready to take new connections'

//   disconnected: ->
//     # Called when the subscription has been terminated by the server

//   received: (data) ->
//     # Called when there's incoming data on the websocket for this channel
//     alert data

//   display: ->
//     @perform 'display'


App.messages = App.cable.subscriptions.create('UserLocationChannel', {  
  received: function(data) {
    alert("hello world");
    alert(data);
  },
  renderMessage: function(data) {
    return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
  }
});