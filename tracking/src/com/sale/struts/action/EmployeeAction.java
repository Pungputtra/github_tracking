/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.sale.struts.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.util.*;

import com.sale.struts.data.tblemployee;
import com.sale.struts.form.EmployeeForm;

/** 
 * MyEclipse Struts
 * Creation date: 10-05-2015
 * 
 * XDoclet definition:
 * @struts.action path="/employee" name="employeeForm" input="/employee.jsp" scope="request" validate="true"
 */
public class EmployeeAction extends Action {	
	private EmployeeForm employeeForm;
	
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		EmployeeForm employeeForm = (EmployeeForm) form;// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
			return mapping.findForward("nologin");
		}
		
		String username=null, password=null, empname=null, position=null, address=null, tel=null, mail=null,  
		submit=null, search=null, delete=null, update=null;
		
		
		try {
			username = employeeForm.getUsername();
			password = employeeForm.getPassword();
			empname = new String(employeeForm.getEmpname().getBytes("ISO8859_1"),"utf-8");
			position = new String(employeeForm.getPosition().getBytes("ISO8859_1"),"utf-8");
			address = new String(employeeForm.getAddress().getBytes("ISO8859_1"),"utf-8");
			tel = employeeForm.getTel();
			mail = employeeForm.getMail();
			
		
			submit = request.getParameter("submit");
			search = request.getParameter("search");
			delete = request.getParameter("delete");
			update = request.getParameter("update");
			
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		tblemployee tbl = new tblemployee();
		
		if(submit != "" && submit != null){
			try {
				tbl.insert_to_employee(username, password, empname, position, address, tel, mail);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			employeeForm.setUsername("");
			employeeForm.setPassword("");
			employeeForm.setEmpname("");
			employeeForm.setPosition("");
			employeeForm.setAddress("");
			employeeForm.setTel("");
			employeeForm.setMail("");
			
		
		}else if(search != "" && search != null){
			String[] result = new String[7];
			try {
				
				username = employeeForm.getUsername();
				
				empname = employeeForm.getEmpname();
				position = employeeForm.getPosition();
				address = employeeForm.getAddress();
				tel = employeeForm.getTel();
				mail = employeeForm.getMail();
				
				
				result = tbl.select_from_employee(username);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			employeeForm.setUsername(result[0]);
			employeeForm.setPassword(result[1]);
			employeeForm.setEmpname(result[2]);
			employeeForm.setPosition(result[3]);
			employeeForm.setAddress(result[4]);
			employeeForm.setTel(result[5]);
			employeeForm.setMail(result[6]);
				
			
		}else if(delete != "" && delete != null){
			try {
				tbl.delete_from_employee(username);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			employeeForm.setUsername("");
			employeeForm.setPassword("");
			employeeForm.setEmpname("");
			employeeForm.setPosition("");
			employeeForm.setAddress("");
			employeeForm.setTel("");
			employeeForm.setMail("");
			
			
		}else if(update != "" && update != null){
			try {
				tbl.update_employee(username, password, empname, position, address, tel, mail);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			employeeForm.setUsername("");
			employeeForm.setPassword("");
			employeeForm.setEmpname("");
			employeeForm.setPosition("");
			employeeForm.setAddress("");
			employeeForm.setTel("");
			employeeForm.setMail("");
					
		}
		
		return mapping.findForward("success");
		
	}
}
