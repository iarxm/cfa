// ==UserScript==
// @name Decluttered Outlook
// @version 1.0.13
// @description Removes all advertisement banners, favorites, groups und the header of folders.
// @author floriegl
// @license CC0
// @namespace https://greasyfork.org/users/703184
// @grant GM_addStyle
// @run-at document-start
// @include https://outlook.live.com/mail/*
// @downloadURL https://update.greasyfork.org/scripts/422440/Decluttered%20Outlook.user.js
// @updateURL https://update.greasyfork.org/scripts/422440/Decluttered%20Outlook.meta.js
// ==/UserScript==

(function() {
let css = `
/* Top ad banner */
div#app > div > div:nth-child(3) > div > div:nth-child(2) > div:nth-child(2) > div > div > div > div:nth-child(3) > div > div > div > div:nth-child(4) > div > div > div > div > div > div> div > div:nth-child(1) > div > div:not([role]) {
    display: none !important;
}

/* "Upgrade" banner */
div#app > div > div:nth-child(3) > div > div:nth-child(2) > div:nth-child(2) > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) {
    display: none !important;
}
  
/* Favorites in sidebar */
div#app > div > div:nth-child(3) > div > div:nth-child(2) > div:nth-child(2) > div > div > div > div:nth-child(1) > div > div > div:nth-child(1) > div > div > div:nth-child(2) {
    display: none !important;
}

/* Folder header in sidebar */
div#app > div > div:nth-child(3) > div > div:nth-child(2) > div:nth-child(2) > div > div > div > div:nth-child(1) > div > div > div:nth-child(1) > div > div > div:nth-child(3) > div:nth-child(1) {
    display: none !important;
}

/* Groups in sidebar */
div#app > div > div:nth-child(3) > div > div:nth-child(2) > div:nth-child(2) > div > div > div > div:nth-child(1) > div > div > div:nth-child(1) > div > div > div:nth-child(5){
    display: none !important;
}
    
/* New group button in sidebar */
div#app > div > div:nth-child(3) > div > div:nth-child(2) > div:nth-child(2) > div > div > div > div:nth-child(1) > div > div > div:nth-child(1) > div > div > div:nth-child(7){
    display: none !important;
}
`;
if (typeof GM_addStyle !== "undefined") {
  GM_addStyle(css);
} else {
  let styleNode = document.createElement("style");
  styleNode.appendChild(document.createTextNode(css));
  (document.querySelector("head") || document.documentElement).appendChild(styleNode);
}
})();
