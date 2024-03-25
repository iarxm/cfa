// ==UserScript==
// @name       openai.chat.openai.com2.user.css
// @include    *chat.openai.com*
// ==/UserScript==


GM_addStyle(

`/* ---------- color---------- */

/* reduce background color of most everything */
#__next * { --tw-bg-opacity: 0.05 !important; }
.dark body, .dark html {
  background-color: #000000;
}
/* buttons */
#__next .btn-neutral {
  background-color: #1c1c1c;
  border: none;
}
#__next .btn-neutral:hover {
  background-color: #242424;
}
/* NO GRADIENTS */
#__next [class*="gradient"] {
  background-image: none !important;
}

/* ------ space ---------------------------- */

/* Wider chat window */
.xl\:max-w-3xl {
    max-width: 96%;
}

/* remove grey space */
.md\:h-48 {
    height: 1rem;
}

/* Move scrollable area up*/
[class^="react-scroll-to-bottom--"] {
    height: 87%;
    overflow-y: auto;
    width: 100%;
    overflow-x: hidden;
}

/* Increase side scroll bar width*/
[class^="react-scroll-to-bottom--"]::-webkit-scrollbar {
    width: 10px;
}

/* Increase side scroll bar thumb and scroll speed*/
[class^="react-scroll-to-bottom--"]::-webkit-scrollbar-thumb {
min-height: 10px;
}

/* Remove prompt suggestions */
.md\:overflow-visible {
    display: none;
}

/* Move regenerate button under the prompt input */
.md\:items-end {
    align-items: flex-end;
    position: absolute;
    left: 0;
    bottom: -45px;
}

/* Add red bg color to regenerate button*/
button.btn.relative.btn-neutral.whitespace-nowrap.-z-0.border-0.md\:border {
    border-radius: 10px;
    background: #ee0008;
    border: 1px solid #ee0008;
    color: #fff
}

/* Regenerate button hover*/
button.btn.relative.btn-neutral.whitespace-nowrap.-z-0.border-0.md\:border:hover {
    background: #9c1519;
    border: 1px solid #9c1519;
    transition: 0.25s;
}

/* Add "response" to regenerate button*/
button.btn.relative.btn-neutral.whitespace-nowrap.-z-0.border-0.md\:border .flex.w-full.gap-2.items-center.justify-center:after {
    content: "last response";
}

/* Increase horizontal code scroll bar height */
.p-4.overflow-y-auto::-webkit-scrollbar {
    height: 20px;
}


/* Move copy code to the left side */
.flex.items-center.relative.text-gray-200.bg-gray-800.px-4.py-2.text-xs.font-sans.justify-between.rounded-t-md {
    display: flex;
    flex-direction: row-reverse;
    justify-content: flex-end;
}

/* Change the copy code into a button */
.flex.items-center.relative.text-gray-200.bg-gray-800.px-4.py-2.text-xs.font-sans.justify-between.rounded-t-md button.flex.ml-auto.gap-2 {
    margin: 0 10px 0 0;
    align-items: center;
    background: #3f51b5;
    padding: 5px 10px;
    border-radius: 5px;
    min-width: 60px;
}

/* Hover state for copy button*/
.flex.items-center.relative.text-gray-200.bg-gray-800.px-4.py-2.text-xs.font-sans.justify-between.rounded-t-md button.flex.ml-auto.gap-2:hover {
    background: #2196F3;
    transition: 0.25s;
}

/* Increase size of copy code clipboard*/
.flex.items-center.relative.text-gray-200.bg-gray-800.px-4.py-2.text-xs.font-sans.justify-between.rounded-t-md svg.h-4.w-4 {
    width: 25px;
    height: 25px;
}

/* Increase the size of the main copy to clipboard*/
button.flex.ml-auto.gap-2.rounded-md.p-1.hover\:bg-gray-100.hover\:text-gray-700.dark\:text-gray-400.dark\:hover\:bg-gray-700.dark\:hover\:text-gray-200.disabled\:dark\:hover\:text-gray-400 svg.h-4.w-4 {
    width: 50px;
    height: 50px;

}

/* Move clipboard icon below the response rating*/
.text-gray-400.flex.self-end.lg\:self-center.justify-center.mt-2.gap-2.md\:gap-3.lg\:gap-1.lg\:absolute.lg\:top-0.lg\:translate-x-full.lg\:right-0.lg\:mt-0.lg\:pl-2.visible {
   display: flex;
   flex-direction: column-reverse;
}
`)


function setRootStyles() {
    var rootElement = document.documentElement;
    var styleProperties = [
          '--main-surface-primary',
          '--main-surface-secondary',
          '--main-surface-tertiary',
          '--sidebar-surface-primary',
          '--sidebar-surface-secondary',
          '--sidebar-surface-tertiary'];
    styleProperties.forEach(function(prop) { rootElement.style.setProperty(prop, '#000000'); });
    document.body.style.backgroundColor = '#000000';
}

function applyStyles() { 
    setRootStyles();
}

applyStyles();
   
// '--text-primary',
// '--text-secondary,'
//  --text-tertiary: var(--gray-400);
//  --text-quaternary: var(--gray-500);
//  --border-light: hsla(0,0%,100%,.1);
//  --border-medium: hsla(0,0%,100%,.15);
//  --border-heavy: hsla(0,0%,100%,.2);
//  --border-xheavy: hsla(0,0%,100%,.25);
//  --link: #7ab7ff;
//  --link-hover: #5e83b3;


