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
 * Creation date: 11-19-2015
 * 
 * XDoclet definition:
 * @struts.form name="reportForm"
 */
public class ReportForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** startdate property */
	private String startdate;

	/** empname property */
	private String empname;

	/** enddate property */
	private String enddate;

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
	 * Returns the startdate.
	 * @return String
	 */
	public String getStartdate() {
		return startdate;
	}

	/** 
	 * Set the startdate.
	 * @param startdate The startdate to set
	 */
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	/** 
	 * Returns the empname.
	 * @return String
	 */
	public String getEmpname() {
		return empname;
	}

	/** 
	 * Set the empname.
	 * @param empname The empname to set
	 */
	public void setEmpname(String empname) {
		this.empname = empname;
	}

	/** 
	 * Returns the enddate.
	 * @return String
	 */
	public String getEnddate() {
		return enddate;
	}

	/** 
	 * Set the enddate.
	 * @param enddate The enddate to set
	 */
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
}