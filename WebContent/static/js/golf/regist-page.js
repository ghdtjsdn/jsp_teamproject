/**
 * 
 */
 
const registForm = document.querySelector("#regist-form");
const registMonth = document.querySelector("#regist-month");
const cName = document.querySelector("#c-name");

const cNo = document.querySelector("#c-no");
const classArea = document.querySelector("#class-area");
const className = document.querySelector("#class-name");
const tuition = document.querySelector("#tuition");
let grade;
const submitBtn = document.querySelector("#submit");


function changeValues (){
  const cNameIndex = cName.selectedIndex;
  if(isIndexNotZero(cNameIndex)){
  	cNo.value = cName.options[cNameIndex].dataset.cno;
  	grade = cName.options[cNameIndex].dataset.grade;
  	console.log(grade);
  }
  const classNameIndex = className.selectedIndex;
  if(isIndexNotZero(classNameIndex)){
    tuition.value = className.options[classNameIndex].dataset.tuition;
  	bargain.textContent = "";
    if(cNo.value.charAt(0) !== '1' && cNo.value){
      tuition.value /= 2;
      bargain.textContent = "(50% 할인)";
    }
  }
  
}

const isIndexNotZero= (index) =>{
	if (index === 0) return false;
	return true;
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
	const formData = new FormData(registForm);
	formData.append("grade", grade);
	
    const formDataString = new URLSearchParams(formData).toString();
	try {
		const response = await axios.post(action, formDataString, {
	      headers: {
	        "Content-Type": "application/x-www-form-urlencoded"
	      }	
	    });
	    const {msg, redirectPage} = response.data;
		if (response.status === 200) {
			alert(msg);
		} else {
			alert("연결이 정상적이지 않습니다.");
		}
		window.location.href = redirectPage;
	} catch (error) {
		console.error("An error occurred:", error);
	}
};