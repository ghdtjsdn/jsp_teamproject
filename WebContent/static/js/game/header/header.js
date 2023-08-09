/**
 * game 헤더에 있는 링크에 현재 페이지를 강조하기 위해 흰색 색상을 준 것
 */
 
const splitedLink = location.pathname.split("/");
const currentPath = splitedLink[splitedLink.length-1].split(".")[0];
if(document.querySelector(`#${currentPath}-page`) !==null) document.querySelector(`#${currentPath}-page`).classList.add("active");