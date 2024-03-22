// ==UserScript==
// @name         Background Color Changer
// @namespace    http://tampermonkey.net/
// @version      1.0
// @description  Change background color to black for elements with a defined background color
// @author       iarom
// @match        *://*/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Function to check if an element has a non-default background color
    function hasBackgroundColor(element) {
        const backgroundColor = window.getComputedStyle(element, null).getPropertyValue('background-color');
        // Check if the color is not default or transparent
        return backgroundColor !== 'rgba(0, 0, 0, 0)' && backgroundColor !== 'transparent';
    }

    // Function to change background color
    function changeBackgroundColor(element) {
        if (hasBackgroundColor(element)) {
            element.style.backgroundColor = '#000000';
        }
    }

    // Iterating over all elements
    document.querySelectorAll('*').forEach(element => {
        changeBackgroundColor(element);
    });

    // Optional: MutationObserver to handle dynamically added elements
    const observer = new MutationObserver(mutations => {
        mutations.forEach(mutation => {
            if (mutation.addedNodes) {
                mutation.addedNodes.forEach(node => {
                    if (node.nodeType === 1) { // Checks if the node is an element
                        changeBackgroundColor(node);
                    }
                });
            }
        });
    });

    // Start observing
    observer.observe(document.body, {
        childList: true,
        subtree: true
    });
})();
