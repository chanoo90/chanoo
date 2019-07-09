package com.cass.dto;

public class MemberVO {
	
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private String ssn;
	private String addr;
	private String phone;
	private String tel;
	private String email;
	private String pic;
	private int enabled;
	private int DEPT_ID;
	private int PO_ID;
	private int A_ID;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	public int getDEPT_ID() {
		return DEPT_ID;
	}
	public void setDEPT_ID(int dEPT_ID) {
		DEPT_ID = dEPT_ID;
	}
	public int getPO_ID() {
		return PO_ID;
	}
	public void setPO_ID(int pO_ID) {
		PO_ID = pO_ID;
	}
	public int getA_ID() {
		return A_ID;
	}
	public void setA_ID(int a_ID) {
		A_ID = a_ID;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender + ", ssn=" + ssn
				+ ", addr=" + addr + ", phone=" + phone + ", tel=" + tel + ", email=" + email + ", pic=" + pic
				+ ", enabled=" + enabled + ", DEPT_ID=" + DEPT_ID + ", PO_ID=" + PO_ID + ", A_ID=" + A_ID + "]";
	}
	
}
