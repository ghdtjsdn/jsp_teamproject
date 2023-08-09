/**
 * Game rsp.jsp 에 include할 javascript파일
 * 가위바위보 게임
 */

const cPath= `/${location.pathname.split("/")[1]}`;
const subPath = "/game";
const imageFolder = `/static/images${subPath}`;

function userChoice(user) {
	const choices = ['가위', '바위', '보'];
	const computer = choices[Math.floor(Math.random() * choices.length)];
	let result = '';

	if (user === '가위') {
		document.querySelector("#YOU").src = `${cPath}${imageFolder}/sissor.jpg`;
	} else if (user === '바위') {
		document.querySelector("#YOU").src = `${cPath}${imageFolder}/rock.jpg`;
	} else {
		document.querySelector("#YOU").src = `${cPath}${imageFolder}/paper.jpg`;
	}

	if (computer === '가위') {
		document.querySelector("#COM").src = `${cPath}${imageFolder}/sissor.jpg`;
	} else if (computer === '바위') {
		document.querySelector("#COM").src = `${cPath}${imageFolder}/rock.jpg`;
	} else {
		 document.querySelector("#COM").src = `${cPath}${imageFolder}/paper.jpg`;
	}



	if (user === computer) {
		result = '비겼습니다!';
	} else if (
		(user === '가위' && computer === '보') ||
		(user === '바위' && computer === '가위') ||
		(user === '보' && computer === '바위')
	) {
		result = '사용자가 이겼습니다!';
	} else if (
		(user === '가위' && computer === '바위') ||
		(user === '바위' && computer === '보') ||
		(user === '보' && computer === '가위')
	) {
		result = '컴퓨터가 이겼습니다!';
	}

	const resultElement = document.getElementById("result");

	resultElement.textContent = result;
}


const $main = document.querySelector('main');
$main.style.setProperty('--main-img', `url(${cPath}${imageFolder}/main.jpg)`);
console.log($main)
