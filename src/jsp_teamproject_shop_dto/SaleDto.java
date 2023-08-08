package jsp_teamproject_shop_dto;

import java.sql.Timestamp; 

//sale_form
//이름      널? 유형          
//------- -- ----------- 
//CUSTNO     NUMBER(6)   
//custname   VARCHAR2(8)   
//grade      NUMBER(8)   
//(sum)Price VARCHAR2(4) 

public class SaleDto {
	private int custno;
	private String custname;
	private String grade;
	private int price;
	
	public SaleDto() {}
	
	
	public SaleDto(int custno, String custname, String grade, int price) {
		super();
		this.custno = custno;
		this.custname = custname;
		this.grade = grade;
		this.price = price;
	}
	public int getCustno() {
		return custno;
	}
	public void setCustno(int custno) {
		this.custno = custno;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
	

}
