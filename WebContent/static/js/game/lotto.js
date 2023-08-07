/**
 * GAME lotto.jsp에서 include할 javascript 파일  
 */


function lottoNumbers() {
	const numbers = [];
	while (numbers.length < 6) {
		const randomNumber = Math.floor(Math.random() * 45) + 1;
		if (!numbers.includes(randomNumber)) {
			numbers.push(randomNumber);
		}
	}
	const ballNums = [];
	while (ballNums.length < 6) {
		const randomNum = parseInt(Math.random() * 6) + 1;
		if (!ballNums.includes(randomNum)) {
			ballNums.push(randomNum);
		}
	}
	const balls = document.getElementsByClassName("ball"); /* 번호를 생성하고 해당번호를 로또 번호 공에 표시하는 역활 */
	for (let i = 0; i < balls.length; i++) {

		const str = "ball" + ballNums[i];
		balls[i].className = "ball";
		balls[i].classList.add(str);

		balls[i].textContent = numbers[i];
	}
}

window.onload = lottoNumbers;