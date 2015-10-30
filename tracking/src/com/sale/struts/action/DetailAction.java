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

import com.sale.struts.data.tblcustomer;
import com.sale.struts.data.tbldetail;
import com.sale.struts.data.tblproject;
import com.sale.struts.form.DetailForm;

/** 
 * MyEclipse Struts
 * Creation date: 10-06-2015
 * 
 * XDoclet definition:
 * @struts.action path="/detail" name="detailForm" input="/form/detail.jsp" scope="request" validate="true"
 */
public class DetailAction extends Action {
	private DetailForm detailForm;
	
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
		DetailForm detailForm = (DetailForm) form;// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null){
			return mapping.findForward("nologin");
		}
		
		String id, cusid, proid, statusid, remark, date, username, 
		submit, search, delete, showlist = null;
		
		id = detailForm.getId();
		cusid = detailForm.getCusid();
		proid = detailForm.getProid();
		statusid = detailForm.getStatus();
		remark = detailForm.getRemark();
		date = detailForm.getDate();
		username = (String)session.getAttribute("username");
		
		
		submit = request.getParameter("submit");
		search = detailForm.getSearch();
		delete = request.getParameter("delete");
		showlist = request.getParameter("showlist");
		
		tbldetail tbl = new tbldetail();
		tblproject tblp = new tblproject();
		
		
		if(submit != "" && submit != null){
			
			try {
				tbl.insert_to_detail(cusid, proid, statusid, remark, date, username);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			detailForm.setCusid("");
			detailForm.setProid("");
			detailForm.setStatusid("");
			detailForm.setRemark("");
			detailForm.setDate("");
			
			
			
		}else if(search != "" && search != null){
			String[] result = new String[7];
			List projectlist = null;
			try {
				
				projectlist = tblp.select_project(cusid);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("projectlist", projectlist);
			
			
			detailForm.setId(result[0]);
			detailForm.setCusid(result[1]);
			detailForm.setProid(result[2]);
			detailForm.setStatusid(result[3]);
			detailForm.setRemark(result[4]);
			detailForm.setDate(result[5]);
			detailForm.setUsername(result[6]);
				
			
		}
		
		else if(delete != "" && delete != null){
			try {
				tbl.delete_from_detail(id);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			detailForm.setId("");
			detailForm.setCusid("");
			detailForm.setProid("");
			detailForm.setStatusid("");
			detailForm.setRemark("");
			detailForm.setDate("");
			detailForm.setUsername("");
			
			
		}else{
			String[] result = new String[7];
			List customerlist = null;
			try {
				tblcustomer tblc = new tblcustomer();
				customerlist = tblc.select_customer("");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("customerlist", customerlist);
			
			detailForm.setId(result[0]);
			detailForm.setCusid(result[1]);
			detailForm.setProid(result[2]);
			detailForm.setStatusid(result[3]);
			detailForm.setRemark(result[4]);
			detailForm.setDate(result[5]);
			detailForm.setUsername(result[6]);
			
		}
			
		return mapping.findForward("success");
	}
}