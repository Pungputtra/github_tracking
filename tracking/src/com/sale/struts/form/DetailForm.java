/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sale.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 10-06-2015
 * 
 * XDoclet definition:
 * @struts.form name="detailForm"
 */
public class DetailForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** id property */
	private String id;

	/** cusid property */
	private String cusid;
	
	/** statusid property */
	private String statusid;

	/** remark property */
	private String remark;
	
	private String date;

	
	private String submit, search;
	
	private String delete;
	
	private String showlist;
	
	private String proid;
	
	
	private String status;
	
	private String project;
	
	

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the id.
	 * @return String
	 */
	public String getId() {
		return id;
	}

	/** 
	 * Set the id.
	 * @param id The id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/** 
	 * Returns the cusid.
	 * @return String
	 */
	public String getCusid() {
		return cusid;
	}

	/** 
	 * Set the cusid.
	 * @param cusid The cusid to set
	 */
	public void setCusid(String cusid) {
		this.cusid = cusid;
	}
	
	/** 
	 * Returns the statusid.
	 * @return String
	 */
	public String getStatusid() {
		return statusid;
	}

	/** 
	 * Set the statusid.
	 * @param statusid The statusid to set
	 */
	public void setStatusid(String statusid) {
		this.statusid = statusid;
	}
	
	/** 
	 * Returns the remark.
	 * @return String
	 */
	public String getRemark() {
		return remark;
	}

	/** 
	 * Set the remark.
	 * @param remark The remark to set
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}


	public String getSubmit() {
		return submit;
	}

	public void setSubmit(String submit) {
		this.submit = submit;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getDelete() {
		return delete;
	}

	public void setDelete(String delete) {
		this.delete = delete;
	}

	public String getProid() {
		return proid;
	}

	public void setProid(String proid) {
		this.proid = proid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getShowlist() {
		return showlist;
	}

	public void setShowlist(String showlist) {
		this.showlist = showlist;
	}

}