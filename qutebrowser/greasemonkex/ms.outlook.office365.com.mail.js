// ==UserScript==
// @name       outlook.office365.com/mail custom
// @author     Iarom Madden
// @include    *outlook.office365.com/mail**
// @include    *outlook.office365.com**
// @include    *outlook.office.com/mail**
// ==/UserScript==

// TODO: tidyup
// TODO: Move bars mostly onto one line. 
// TODO: Combine bars from different wrapping elements.
// TODO: Inbox, Select, Filter - put onto another bar to save space

// TODO: convert all below into JS
GM_addStyle(`
  /* ############################################## */
  /* SIDE APP BAR */
  
  #LeftRail {
      opacity: 0;
      visibility: hidden;
      transition: all 0.5s ease;
      display: none;
  }
  
  #LeftRail:hover {
      opacity: 1;
      visibility: visible;
      display: none;
  }
  
  .O0VOp {
      /* padding: 0 20px 0 0; */
  }
  /* ####################################################### */
  /* TOOLBARS */
  
    
  #RibbonRoot {
          display: flex;
          flex-direction: row; /* Align children horizontally */
          justify-content: space-between; /* Distribute space between children */
  }
  
  /* Style for TopBar */
  #topbar {
      width: auto; /* adjust the width as needed */
      float: left; /* align to the left */
  }
  
  /* Style for BottomBar */
  #BottomBar {
      width: auto; /* Adjust the width as needed */
      float: left; /* Align to the right */
  }
  
  /* Wrapper style for responsiveness */
  @media (max-width: 600px) { /* Adjust the breakpoint as needed */
      #TopBar, #BottomBar {
          width: 100%;
          float: none;
      }
  }
  
  #x8k1J {
      max-width: 100%;
      width: 100%;
  }
  
  #owaChatButton_container, #owaNoteFeedButton_container, #owaTimePanelBtn_container, #owaActivityFeedButton_container, #owaTipsBtn_container {
      display: none;
  }
  .o365cs-base .o365sx-button {
      background-color: #000000;
  }

  /*
  .s8wta {
      opacity: 0; /* The element is fully transparent (and thus invisible) by default */
      visibility: hidden; /* Alternatively, you can use visibility */
      transition: all 0.5s ease; /* Smooth transition for showing the element */
  }
  .s8wta:hover {
      opacity: 1; /* The element becomes fully opaque (visible) on hover */
      visibility: visible; /* Alternatively, you can use visibility */
  }
  */
  /* ########################################### */
`)

function setRootStyles() {
    var rootElement = document.documentElement;
    var styleProperties = [
        '--neutralPrimarySurface',
        '--neutralPrimaryAlt',
        '--neutralSecondarySurface',
        '--neutralSecondaryAlt',
        '--neutralTertiarySurface',
        '--neutralQuaternarySurface',
        '--storageUsageBarBorder',
        '--colorNeutralBackground1',
        '--colorNeutralBackground3Hover',
        '--colorNeutralStrokeOnBrand'];
    var stylePropertiesx = [
        '--neutralLighterAlt',
        '--neutralTertiaryAlt',
        '--neutralQuaternaryAlt'];
    styleProperties.forEach(function(prop) { rootElement.style.setProperty(prop, '#000000'); });
    stylePropertiesx.forEach(function(prop) { rootElement.style.setProperty(prop, '#000000'); });
    document.body.style.backgroundColor = '#000000';
}

function updateElementStyles() {
    applyBackgroundColor('.o365sx-navbar', '#000000');
    applyBackgroundColor('.owaSettingsButton', '#000000');
    applyBackgroundColor('.o365cs-base .o365sx-button', '#000000');
    applyBackgroundColor('.x_nl-container', '#000000');
    applyBackgroundColor('.rps_7907', '#000000');
    var emailContainer = document.getElementById('x_EMAIL_CONTAINER');
    var divs = document.querySelectorAll('div[data-ogsb="white"]');
    divs.forEach(function(div) {
        div.style.setProperty('background-color', '#000000', 'important');
    });
    if (emailContainer) {
        emailContainer.style.backgroundColor = '#000000';
    }
}

function moveElements() {
    var targetSection = document.querySelector('#Region_0');
    moveElement('#BottomBar', targetSection, 'prepend');
    moveElement('#TopBar', targetSection, 'prepend');
    moveElement('.BeA01.bkYAr.rv6Vd', targetSection, 'append');
    moveElement('#O365_MainLink_NavMenu', targetSection, 'append');
}

function removeElements() {
    var elementToRemove = document.querySelector('#leftCharmsRegion');
    if (elementToRemove) {
        elementToRemove.remove();
    }
}


// GENERALISED FUNCTIONS #############################################

function moveElement(selector, target, method) {
    var element = document.querySelector(selector);
    if (element && target) {
        if (method === 'append') {
            target.appendChild(element);
        } else if (method === 'prepend') {
            target.prepend(element);
        }
    }
}

function applyBackgroundColor(selector, color) {
    var elements = document.querySelectorAll(selector);
    elements.forEach(function(element) {
        element.style.backgroundColor = color;
    });
}

function applyToAllBackgrounds() {
    var allElements = document.querySelectorAll('*'); // Selects all elements on the page
    allElements.forEach(function(element) {
        // Check if the element has an inline style background property set
        //if (element.style.background) {
        //    element.style.background = 'black';
        //}

        // Additionally, check for background-color property
        if (element.style.backgroundColor) {
            element.style.backgroundColor = '#000000';
        }
    });
}


// Attempt to display page after x seconds #######################

function showContent() {
     document.querySelector('body').style.display = '';
}

function hideContent() {
    'use strict';
    var style = document.createElement('style');
    style.type = 'text/css';
    style.innerHTML = 'body { display: none !important; }';
    document.head.appendChild(style);
}

//hideContent();
//setTimeout(showContent, 7000);


// EXEC #############################################################

function applyStyles() { 
    setRootStyles();
    updateElementStyles();
    moveElements();
    removeElements();
}

function applyIndefinitely() {
    applyToAllBackgrounds();
}


function applyLoop() {
     var intervalCount = 0;
     var maxIntervals = 5;
     var intervalId = setInterval(function() {
         if (intervalCount >= maxIntervals) {
             clearInterval(intervalId);
             return;
         }
         if (intervalCount = 4) {
             showContent();
         }
         applyStyles(); // Initial mod
         intervalCount++;
     }, 1000); // milliseconds
}


// main ###########################################################

function main() {
     applyStyles(); // Initial mod
     applyLoop();
     setInterval(applyIndefinitely, 10);
}

main();
