// ==UserScript==
// @name            youtube: video screen mods
// @author:         iarom
// @include           *://*youtube.com/watch?v=*
// // @include           *youtube.com/*
// ==/UserScript==

const CSS = {
     sideBar: '#secondary.ytd-watch-flexy',
     topHeader: '#masthead-container.ytd-app',
     vidInfo: '#top-row',
     //shortsButs: 'aria-label="Shorts"',
     shortsButs: '#endpoint[title="Shorts"]'
}

function hideElement(selector) {
    var elements = document.querySelectorAll(selector);
    elements.forEach(function(element) {
        element.style.display = 'none';
    });
}

// toggle button for suggested videos
function toggleDisplay(selector) {
    var element = document.querySelector(selector);
    if (element) {
        if (element.style.display === 'none') {
            element.style.display = ''; // Reset to default display style
        } else {
            element.style.display = 'none';
        }
    }
}

// This function adds the toggle button to the page
function createToggleButton() {
    var button = document.createElement('button');
    button.textContent = 'Sidebar';
    button.style.position = 'fixed';
    button.style.top = '10px';
    button.style.left = '10px';
    button.style.zIndex = 1000; // Ensure the button is on top of other elements

    button.addEventListener('click', function() {
        toggleDisplay(CSS.sideBar);
    });
    return button;
    }

function appendButtonToFooter() {
     //var buts = document.querySelector(CSS.vidInfo);
     var button = createToggleButton();
     document.body.appendChild(button);
}

function applyStyles() { 
     hideElement(CSS.sideBar);
     hideElement(CSS.topHeader);
     hideElement(CSS.shortsButs);
}

function applyLoop() {
     var intervalCount = 0;
     var maxIntervals = 5;
     var intervalId = setInterval(function() {
         if (intervalCount >= maxIntervals) {
             clearInterval(intervalId);
             return;
         }
         applyStyles(); // Initial mod
         intervalCount++;
     }, 1000); // milliseconds
}


// main ###########################################################

function main() {
     appendButtonToFooter();
     applyStyles(); // Initial mod
     applyLoop();
}

console.log('Running Main'); // Debugging

main();


