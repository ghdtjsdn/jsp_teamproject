/**
 * 
 */
 
 
const registMonth = document.querySelector("#regist-month");
const cName = document.querySelector("#c-name");

const cNo = document.querySelector("#c-no");
const classArea = document.querySelector("#class-area");
const className = document.querySelector("#class-name");
const tuition = document.querySelector("#tuition");
const submitBtn = document.querySelector("#submit");


function changeValues (){
	const cNameIndex = cName.selectedIndex;
	if(cNameIndex === 0 ) return;
  cNo.value = cName.options[cNameIndex].dataset.cno;

  const classNameIndex = className.selectedIndex;
  if(classNameIndex === 0 ) return;
  tuition.value = className.options[classNameIndex].dataset.tuition;
  
  bargain.textContent = "";
  if(cNo.value.charAt(0) !== '1'){
		tuition.value /= 2;
		bargain.textContent = "(50% 할인)";
  }	
}

cName.addEventListener("change",changeValues);

classArea.addEventListener("change", changeValues);

className.addEventListener("change", changeValues);



submitBtn.addEventListener("click", ()=>{
  const year = parseInt(registMonth.value.substring(0,4));
  const month = parseInt(registMonth.value.substring(4, 6));
  if(Number(registMonth.value) != registMonth.value){
    alert("형식에 맞춰 숫자를 입력해주세요");
    registMonth.focus();
    return;
  }
  if(registMonth.value.length !==6){
    alert("수강 월을 형식에 맞게 입력해주세요.");
    registMonth.focus();
    return;
  }
  if( year < 2000 || 2100 < year ){
	alert("2000년에서 2100년 사이의 범위만 입력 가능합니다.");
    registMonth.focus();
	return;
  }
  if( month < 1 || 12 < month ){
    alert("1월에서 12월 사이의 범위만 입력 가능합니다.");
    registMonth.focus();
    return;  
  }
  if(cName.selectedIndex === 0){
    alert("이름을 선택하세요");
    cName.focus();
    return;
  }
  if(classArea.selectedIndex === 0){
    alert("강의장소를 선택하세요");
    classArea.focus();
    return;
  }
  if(className.selectedIndex === 0){
    alert("강의명을 선택하세요");
    classArea.focus();
    return;
  }
	
  submitForm("./regist.do");
});


async function submitForm(action) {
	try {
		const response = await axios.post(action);
		const {data} = response;
		const {msg, redirectPage} = data;
		if (response.status === 200) {
			alert(msg);
			window.location.href = redirectPage;
		} else {
			alert("Registration failed.");
		}
	} catch (error) {
		console.error("An error occurred:", error);
	}
}