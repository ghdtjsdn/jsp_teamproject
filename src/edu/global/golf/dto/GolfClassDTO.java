package edu.global.golf.dto;

//table TBL_GOLF_CLASS

//이름           널? 유형           
//------------ -- ------------ 
//REGIST_MONTH    VARCHAR2(6)  1
//C_NO            CHAR(5)      2
//CLASS_AREA      VARCHAR2(15) 3
//TUITION         NUMBER(8)    4
//TEACHER_CODE    CHAR(3)      5


public class GolfClassDTO {
	private String regist_month;
	private String c_no;
	private String class_area;
	private int tuition;
	private String teacher_code;
	
	
	public GolfClassDTO(String regist_month, String c_no, String class_area, int tuition, String teacher_code) {
		this.regist_month = regist_month;
		this.c_no = c_no;
		this.class_area = class_area;
		this.tuition = tuition;
		this.teacher_code = teacher_code;
	}
	public GolfClassDTO() {
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
	public String getTeacher_code() {
		return teacher_code;
	}
	public void setTeacher_code(String teacher_code) {
		this.teacher_code = teacher_code;
	}
	
	
}
