/**
 * main header.js
 */

const currentSubPath = location.pathname.split("/");
const subPathNode = document.querySelector("#" + currentSubPath[2] + "-page");
if (subPathNode !== null) subPathNode.classList.add("active");