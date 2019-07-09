package com.cass.dto;

import java.util.Date;

public class PsmVO {

	private int psm_id;
	private int psm_section;
	private String psm_title;
	private String psm_content;
	private String psm_manager;
	private String psm_department;
	private Date psm_regDate;
	private Date psm_startdate;
	private Date psm_enddate;
	private int psm_check_end;
	
	public int getPsm_id() {
		return psm_id;
	}
	public void setPsm_id(int psm_id) {
		this.psm_id = psm_id;
	}
	public int getPsm_section() {
		return psm_section;
	}
	public void setPsm_section(int psm_section) {
		this.psm_section = psm_section;
	}
	public String getPsm_title() {
		return psm_title;
	}
	public void setPsm_title(String psm_title) {
		this.psm_title = psm_title;
	}
	public String getPsm_content() {
		return psm_content;
	}
	public void setPsm_content(String psm_content) {
		this.psm_content = psm_content;
	}
	public String getPsm_manager() {
		return psm_manager;
	}
	public void setPsm_manager(String psm_manager) {
		this.psm_manager = psm_manager;
	}
	public String getPsm_department() {
		return psm_department;
	}
	public void setPsm_department(String psm_department) {
		this.psm_department = psm_department;
	}
	public Date getPsm_regDate() {
		return psm_regDate;
	}
	public void setPsm_regDate(Date psm_regDate) {
		this.psm_regDate = psm_regDate;
	}
	public Date getPsm_startdate() {
		return psm_startdate;
	}
	public void setPsm_startdate(Date psm_startdate) {
		this.psm_startdate = psm_startdate;
	}
	public Date getPsm_enddate() {
		return psm_enddate;
	}
	public void setPsm_enddate(Date psm_enddate) {
		this.psm_enddate = psm_enddate;
	}
	public int getPsm_check_end() {
		return psm_check_end;
	}
	public void setPsm_check_end(int psm_check_end) {
		this.psm_check_end = psm_check_end;
	}
	
	@Override
	public String toString() {
		return "psmVO [psm_id=" + psm_id + ", psm_section=" + psm_section + ", psm_title=" + psm_title
				+ ", psm_content=" + psm_content + ", psm_manager=" + psm_manager + ", psm_department=" + psm_department
				+ ", psm_regDate=" + psm_regDate + ", psm_startdate=" + psm_startdate + ", psm_enddate=" + psm_enddate
				+ ", psm_check_end=" + psm_check_end + "]";
	}
	
}
