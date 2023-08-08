/**
 * Rock Scissors Paper JavaScript
 */

// 가위바위보 게임
function userChoice(user) {
	const choices = ['가위', '바위', '보'];
	const computer = choices[Math.floor(Math.random() * choices.length)];
	let result = '';


	if (user === '가위') {
		document.querySelector("#YOU").src = '/jsp_teamproject/static/img_/sissor.jpg';
	} else if (user === '바위') {
		document.querySelector("#YOU").src = '/jsp_teamproject/static/img_/rock.jpg';
	} else { document.querySelector("#YOU").src = '/jsp_teamproject/static/img_/paper.jpg'; }

	if (computer === '가위') {
		document.querySelector("#COM").src = '/jsp_teamproject/static/img_/sissor.jpg';
	} else if (computer === '바위') {
		document.querySelector("#COM").src = '/jsp_teamproject/static/img_/rock.jpg';
	} else { document.querySelector("#COM").src = '/jsp_teamproject/static/img_/paper.jpg'; }



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