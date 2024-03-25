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
    function testCol(element) { // test if color is incorrect
        const backgroundColor = window.getComputedStyle(element, null).getPropertyValue('background-color');
        return backgroundColor !== 'rgba(0, 0, 0, 0)' ;};

    const changeBgr = element => testCol(element) && (element.style.backgroundColor = '#000000');

    document.querySelectorAll('*').forEach(element => { changeBgr(element); }); //  iterate

    // Optional: MutationObserver to handle dynamically added elements
    const observer = new MutationObserver(mutations => {
        mutations.forEach(mutation => {
            if (!mutation.addedNodes) return;
            mutation.addedNodes.forEach(node => {
                    if (node.nodeType === 1) { // Checks if the node is an element
                        changeBgr(node);
                        console.log(node);
                    }
            });
       });
   });
    observer.observe(document.body, { childList: true, subtree: true }); // init observing
})();
// && backgroundColor !== 'transparent'
