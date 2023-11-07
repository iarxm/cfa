// ==UserScript==
// @name        Bing Custom Interface
// @namespace   ?
// @description Customizes Bing search page interface
// @author      Iarom Madden
// @version     1.0
// @grant       none
// @run-at      document-end
// @include     https://www.bing.com/*
// ==/UserScript==

// IN PROGRESS:

GM_addStyle(`
     .b_logoArea { display: none !important; }
`);

(function() {
    'use strict';

    document.addEventListener('DOMContentLoaded', (event) => {
        var elementsToHide = document.querySelectorAll('.b_logoArea, .b_logo');
        var gptChatIcon = document.querySelector('.selector-for-gpt-chat-icon');
        var imageSearch = document.querySelector('.selector-for-image-search');

        // Hide elements
        var elementsToHide = document.querySelectorAll('.selector-for-elements-to-hide');
        elementsToHide.forEach(el => el.style.display = 'none');

        dropdown = document.createElement('div');
        dropdown.className = 'custom-dropdown'; // Add a class for styling
<a class="b_logoArea" target="" href="/?FORM=Z9FD1" h="ID=SERP,5044.1"><h1 class="b_logo" title="Back to Bing search" aria-label="Go to Bing homepage" data-bm="1"></h1></a>
        // Assuming you have an array of buttons you want to move into the dropdown
        var buttonsToMove = document.querySelectorAll('.selector-for-buttons-to-move');

        buttonsToMove.forEach(button => {
            var menuItem = document.createElement('div');
            menuItem.className = 'dropdown-item';
            menuItem.appendChild(button); // Move the button into the dropdown item
            dropdown.appendChild(menuItem); // Add the dropdown item to the dropdown
        });

        // Append dropdown to the top bar (you need to select the top bar container)
        var topBar = document.querySelector('.selector-for-top-bar');
        topBar.appendChild(dropdown);

        // Now you would style '.custom-dropdown' and '.dropdown-item' in your CSS

        // Create dropdown for other buttons, etc.
        // ...rest of your code...
    });
})();
