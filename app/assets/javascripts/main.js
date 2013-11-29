$(document).ready(function(){
  addEventListeners();
  //initial load
  refreshMessages();
  //refresh every 1 second
  setInterval(function(){
    refreshMessages();
  }, 1000);
  mixpanel.track("Main Page Visit");
});

function addEventListeners() {
  $("#new-message-form").on("submit", function(event) {
    //don't submit the form, just extract the needed info
    event.preventDefault();
    createMessage();
  });
}

function createMessage() {
  //get chatroom id
  //get the message's content
  var $messageContent = $("#message-content");
  var content = $messageContent.val();
  $.ajax({
    url: document.URL + '/messages',
    type: 'post',
    data: {content: content}
  })
  .done(function() {
    //clear the input box
    $messageContent.val('');
  });
}

function refreshMessages() {

  var $messagesDisplay = $("#messages-display");

  //get all the messages
  $.ajax({
    url: document.URL + '/messages',
    type: 'get'
  })
  .done(function(data) {
    //clear the currently displayed messages
    $messagesDisplay.empty();
    //sort in descending order
    var sortedData = data.reverse();
    //display all the messages
    for (var i = 0; i < sortedData.length; i++ ) {
      //display the date/timestamp
      var timestamp = data[0].created_at
      var year = timestamp.substring(0,10);
      var time = timestamp.substring(11, 19);
      //div to wrap the entire message in
      var $messageWrapper = $("<div>");
      //name field
      $messageWrapper.append('<p class="names">' + sortedData[i].name + '</p>');
      //message field
      $messageWrapper.append('<p class="messages" id="' + sortedData[i].id + '" >' + sortedData[i].content + '</p>');
      //timestamp field
      $messageWrapper.append('<p class="timestamp">' + time + ' ' + year +  '</p>');
      //append the wrapper to the message display
      $messagesDisplay.append($messageWrapper);
    }
  });
}


