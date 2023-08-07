package edu.global.golf.dto;

// table TBL_GOLF_TEACHER

//이름                  널?       유형           
//------------------- -------- ------------ 
//TEACHER_CODE        NOT NULL CHAR(3)      1
//TEACHER_NAME                 VARCHAR2(15) 3
//CLASS_NAME                   VARCHAR2(20) 2
//CLASS_PRICE                  NUMBER(8)    
//TEACHER_REGIST_DATE          VARCHAR2(8)  


// table TBL_GOLF_CLASS

//이름           널? 유형           
//------------ -- ------------ 
//REGIST_MONTH    VARCHAR2(6)  
//C_NO            CHAR(5)      
//CLASS_AREA      VARCHAR2(15) 
//TUITION         NUMBER(8)    4
//TEACHER_CODE    CHAR(3)      1


public class GolfSalesDTO {
	private String teacher_code;
	private String class_name;
	private String teacher_name;
	private int sale;
	
	public GolfSalesDTO() {
	}

	public GolfSalesDTO(String teacher_code, String class_name, String teacher_name, int sale) {
		this.teacher_code = teacher_code;
		this.class_name = class_name;
		this.teacher_name = teacher_name;
		this.sale = sale;
	}

	public String getTeacher_code() {
		return teacher_code;
	}

	public void setTeacher_code(String teacher_code) {
		this.teacher_code = teacher_code;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public String getTeacher_name() {
		return teacher_name;
	}

	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int tuition) {
		this.sale = tuition;
	}

	
}
