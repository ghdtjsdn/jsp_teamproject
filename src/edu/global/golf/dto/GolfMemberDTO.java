package edu.global.golf.dto;

// table TBL_GOLF_TEACHER

//이름                  널?       유형           
//------------------- -------- ------------ 
//TEACHER_CODE        NOT NULL CHAR(3)      
//TEACHER_NAME                 VARCHAR2(15) 
//CLASS_NAME                   VARCHAR2(20) 4
//CLASS_PRICE                  NUMBER(8)    
//TEACHER_REGIST_DATE          VARCHAR2(8)  

// table TBL_GOLF_MEMBER

//이름      널?       유형           
//------- -------- ------------ 
//C_NO    NOT NULL CHAR(5)      2
//C_NAME           VARCHAR2(15) 3
//PHONE            VARCHAR2(11) 
//ADDRESS          VARCHAR2(50) 
//GRADE            VARCHAR2(6)  7


// table TBL_GOLF_CLASS

//이름           널? 유형           
//------------ -- ------------ 
//REGIST_MONTH    VARCHAR2(6)  1
//C_NO            CHAR(5)      2
//CLASS_AREA      VARCHAR2(15) 5
//TUITION         NUMBER(8)    6
//TEACHER_CODE    CHAR(3)      


public class GolfMemberDTO {
	private String regist_month;
	private String c_no;
	private String c_name;
	private String class_name;
	private String class_area;
	private int tuition;
	private String grade;
	
	@Override
	public String toString() {
		return "GolfMemberDTO [regist_month=" + regist_month + ", c_no=" + c_no + ", c_name=" + c_name + ", class_name="
				+ class_name + ", class_area=" + class_area + ", tuition=" + tuition + ", grade=" + grade + "]";
	}

	public GolfMemberDTO() {
	}

	public GolfMemberDTO(String regist_month, String c_no, String c_name, String class_name, String class_area,
			int tuition, String grade) {
		this.regist_month = regist_month;
		this.c_no = c_no;
		this.c_name = c_name;
		this.class_name = class_name;
		this.class_area = class_area;
		this.tuition = tuition;
		this.grade = grade;
	}

	public String getRegist_month() {
		return regist_month;
	}

	public void setRegist_month(String regist_month) {
		this.regist_month = regist_month;
	}

	public String getC_no() {
		return c_no;
	}

	public void setC_no(String c_no) {
		this.c_no = c_no;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public String getClass_area() {
		return class_area;
	}

	public void setClass_area(String class_area) {
		this.class_area = class_area;
	}

	public int getTuition() {
		return tuition;
	}

	public void setTuition(int tuition) {
		this.tuition = tuition;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	

		
	
	
}
