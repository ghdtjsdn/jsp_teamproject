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

const cNames= document.querySelectorAll("#c-name option")//.filter((e, i)=> i>0).forEach(e => console.log(e));
const cNameList = ["홍길동", "장발장", "임꺽정", "성춘향", "이몽룡"];
const cNoList=["10001", "10002", "10003", "20001", "20002"];
const classAreaList=["서울본원", "성남분원", "대전분원", "부산분원", "대구분원"];
const classNameList = ["초급반", "초급반", "중급반", "고급반", "심화반"];
const tuitionList = [100000, 100000, 200000, 300000, 400000];

cName.addEventListener("change",() =>{
  const cNameIndex = cNameList.indexOf(cName.value);
  cNo.value = cNoList[cNameIndex];
  
  const classAreaIndex = classAreaList.indexOf(classArea.value);
  if(classAreaIndex < 0 ) return;
  className.value = classNameList[classAreaIndex];
  tuition.value = tuitionList[classAreaIndex];
  bargain.textContent = "";
  if(cNo.value.charAt(0) !== '1'){
	tuition.value /= 2;
	bargain.textContent = "(50% 할인)";
  }
});

classArea.addEventListener("change", e=>{
  const classAreaIndex = classAreaList.indexOf(classArea.value);
  className.value = classNameList[classAreaIndex];
  tuition.value = tuitionList[classAreaIndex];
  bargain.textContent = "";
  if(cNo.value.charAt(0) > '1'){
	tuition.value /= 2;
	bargain.textContent = "(50% 할인)";
  }
  
  
  const cNameIndex = cNameList.indexOf(cName.value);
  
  if(cNameIndex < 0 ) return;
  cNo.value = cNoList[cNameIndex];
});


submitBtn.addEventListener("click", ()=>{
  const registForm = document.querySelector("#regist-form");
  registForm.method = "post";
  const year= parseInt(registMonth.value.substring(0,4));
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
  if(cName.value === "이름을 선택하세요"){
    alert("이름을 선택하세요");
    cName.focus();
    return;
  }
  if(classArea.value === "강의장소를 선택하세요"){
    alert("강의장소를 선택하세요");
    classArea.focus();
    return;
  }
  alert("수강신청이 완료되었습니다.");
  registForm.action = "./regist.do";
  submitBtn.type = "submit";
});