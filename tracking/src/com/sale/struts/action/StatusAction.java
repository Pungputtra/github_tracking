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

import com.sale.struts.data.tblstatus;
import com.sale.struts.form.StatusForm;

/**
 * MyEclipse Struts
 * Creation date: 10-19-2015
 * 
 * XDoclet definition:
 * @struts.action path="/status" name="statusForm" input="/status.jsp" scope="request" validate="true"
 */
public class StatusAction extends Action {
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
			HttpServletRequest request, HttpServletResponse response) {
		StatusForm statusForm = (StatusForm) form;// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
			return mapping.findForward("nologin");
		}
		
		String statusid=null, statusname=null,
		submit=null, search=null, delete=null, update=null, showstatus=null;
		
		statusid = statusForm.getStatusid();
		
		
		
		submit = request.getParameter("submit");
		search = request.getParameter("search");
		delete = request.getParameter("delete");
		update = request.getParameter("update");
		
		showstatus = request.getParameter("showstatus");
		
		
		tblstatus tbls = new tblstatus();
		
		
		if(submit != "" && submit != null){
			
			try {
				statusname = new String (statusForm.getStatusname().getBytes("ISO8859_1"),"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			try {
				tbls.insert_to_status(statusname);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			statusForm.setStatusid("");
			statusForm.setStatusname("");
			
			List statuslist = tbls.select_status(statusid, statusname);
			
			request.setAttribute("statuslist", statuslist);
			
			
		}else if(search != "" && search != null){
			String[] result = new String[2];
			try {
				
				statusid = statusForm.getStatusid();
				statusname = statusForm.getStatusname();
				
				result = tbls.select_from_status(statusid);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			statusForm.setStatusid(result[0]);
			statusForm.setStatusname(result[1]);
			
		
		}else if(delete != "" && delete != null){
			try {
				tbls.delete_from_status(statusid);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			statusForm.setStatusid("");
			statusForm.setStatusname("");
			
			
			List statuslist = tbls.select_status(statusid, statusname);
			
			request.setAttribute("statuslist", statuslist);
			
			
		}else if(update != "" && update != null){
			
			try {
				statusname = new String (statusForm.getStatusname().getBytes("ISO8859_1"),"utf-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			try {
				tbls.update_status(statusid, statusname);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			statusForm.setStatusid("");
			statusForm.setStatusname("");
			
			List statuslist = tbls.select_status(statusid, statusname);
			
			request.setAttribute("statuslist", statuslist);
		
			
		}else if(showstatus != "" && showstatus != null){
			String[] result = new String[2];
			List statuslist = null;
			
			try {
				
				statuslist = tbls.select_status(statusid, statusname);
				
			}  catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
//			statusForm.setStatusid(result[0]);
//			statusForm.setStatusname(result[1]);

			
			
			
			
			request.setAttribute("statuslist", statuslist);
			
	
		}
		
		return mapping.findForward("success");
		
	}
}
