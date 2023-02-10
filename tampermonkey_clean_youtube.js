// ==UserScript==
// @name         Clean Youtube
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Turnning off recommendations on youtube
// @author       You
// @match        https://www.youtube.com/
// @include      https://www.youtube.com/watch*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=youtube.com
// @grant        none
// ==/UserScript==

(function () {
  'use strict';

  var css = `
  /* remove homepage recommendations */
  #contents.ytd-rich-grid-renderer {
    display: none;
  }

  /* remove video page side recommendations */
  #secondary {
    display: none;
  }
`;

  function addGlobalStyle(css) { // stolen from http://greasemonkey.win-start.de/patterns/add-css.html
    var head, style;
    head = document.getElementsByTagName('head')[0];
    if (!head) { return; }
    style = document.createElement('style');
    style.type = 'text/css';
    style.innerHTML = css;
    head.appendChild(style);
  }

  addGlobalStyle(css);
})();
