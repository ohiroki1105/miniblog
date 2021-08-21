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





// 現状では一番最初の投稿にしか削除ボタンが効かない
// 要素取得をIDやClassで行って居るのが原因だと仮説を立てた
// queryで各要素を取得する方法ならば成功するのではないだろうか？


