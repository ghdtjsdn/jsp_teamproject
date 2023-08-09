


function checkForm(f) {
	if(f.custname.value.length == 0){
		alert("회원성명이 입력되지 않았습니다.");
		f.custname.focus();
		return false;
	}
	if(f.phone.value.length == 0){
		alert("회원전화번호가 입력되지 않았습니다.");
		f.phone.focus();
		return false;
	}
	if(f.address.value.length == 0){
		alert("회원주소가 입력되지 않았습니다.");
		f.address.focus();
		return false;
	}
	if(f.grade.value.length == 0){
		alert("고객등급이 입력되지 않았습니다.");
		f.grade.focus();
		return false;
	}
	if(f.city.value.length == 0){
		alert("도시코드가 입력되지 않았습니다.");
		f.city.focus();
		return false;
	}	
}