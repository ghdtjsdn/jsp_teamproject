/**
 * 
 */
 
const cPath= `/${location.pathname.split("/")[1]}`;
const subPath = "/game";
const imageFolder = `/static/images${subPath}`;
 
const mainImage = document.querySelector('#main-image');

mainImage.style.setProperty('--main-img', `url(${cPath}${imageFolder}/main.jpg)`);