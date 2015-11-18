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
 * Creation date: 10-19-2015
 * 
 * XDoclet definition:
 * @struts.form name="statusForm"
 */
public class StatusForm extends ActionForm {
	/*
	 * Generated fields
	 */

	
	/** statusid property */
	private String statusid;
	
	/** statusname property */
	private String statusname;
	
	
	private String submit, search, delete, update;
	
	private String showstatus;
	
	/*
	 * Generated Methods
	 */
	

	public StatusForm(){}
	public StatusForm(String statusid, String statusname) {
		this.statusid = statusid;
		this.statusname = statusname;
		
	}

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
	 * Returns the statusname.
	 * @return String
	 */
	public String getStatusname() {
		return statusname;
	}

	/** 
	 * Set the statusname.
	 * @param statusname The statusname to set
	 */
	public void setStatusname(String statusname) {
		this.statusname = statusname;
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

	public String getUpdate() {
		return update;
	}

	public void setUpdate(String update) {
		this.update = update;
	}
	public String getShowstatus() {
		return showstatus;
	}
	public void setShowstatus(String showstatus) {
		this.showstatus = showstatus;
	}

}