// ==UserScript==
// @name        Bing Search Modifier
// @namespace   Greasemonkey
// @description Hide specific elements on Bing search page
// @include     *://*.bing.com/*
//
// ==/UserScript==

 
function addGlobalStyle(css) {
    var head, style;
    head = document.getElementsByTagName('head')[0];
    if (!head) { return; }
    style = document.createElement('style');
    style.type = 'text/css';
    style.innerHTML = css;
    head.appendChild(style);
}

addGlobalStyle('#b_header #id_h, #b_footer, #b_header .b_logoArea { visibility: hidden; }')
     
addGlobalStyle('html { background: #000000; }')

