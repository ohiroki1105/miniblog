// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

window.addEventListener('load', function() {
    
    const popAppConfirmation = document.getElementById("confirmation_display_before_deletion")
    const popDpwnConfirmation = document.getElementById("cancelButton")
    const pullDownButton = document.querySelectorAll(".pull-down-list")
    
    popDpwnConfirmation.addEventListener('click', function() {
        popAppConfirmation.removeAttribute("style", "display: block;")
    })
    
    
    pullDownButton.forEach(function(list) {
        list.addEventListener('click', function() {
            popAppConfirmation.setAttribute("style", "display: block;")
        })
    })
})
