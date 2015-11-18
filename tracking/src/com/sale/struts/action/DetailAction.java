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

import com.sale.struts.form.DetailForm;
import com.sale.struts.form.CustomerForm;

import com.sale.struts.data.tbldetail;
import com.sale.struts.data.tblcustomer;
import com.sale.struts.data.tblproject;


/**
 * MyEclipse Struts
 * Creation date: 10-06-2015
 * 
 * XDoclet definition:
 * @struts.action path="/detail" name="detailForm" input="/detail.jsp" scope="request" validate="true"
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
		
		String id="", cusid="", proid="", statusid="", remark="", date="", username="", username1="", submit="", search="", delete="", showlist="";
		
		
		
		
			id = detailForm.getId();
			cusid = detailForm.getCusid();
			proid = detailForm.getProid();
			statusid = detailForm.getStatus();
			remark = detailForm.getRemark();
			date = detailForm.getDate();
			
			username = (String)session.getAttribute("username");
			
			username1 = detailForm.getUsername1();
			
			
			submit = request.getParameter("submit");
			search = detailForm.getSearch();
			delete = request.getParameter("delete");
			showlist = request.getParameter("showlist");
		
		
		
		
		tbldetail tbld = new tbldetail();
		tblcustomer tblc = new tblcustomer();
		tblproject tblp = new tblproject();
		
		
		if(submit != "" && submit != null){ 
			
			try {
				remark = new String(detailForm.getRemark().getBytes("ISO8859_1"),"utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				tbld.insert_to_detail(cusid, proid, statusid, remark, date, username);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			
			
			List customerlist = tblc.select_customer("");
			List projectlist = tblp.select_project(cusid);
			
			List detaillist = tbld.select_detail(cusid, proid, statusid, username1);
			
			
			request.setAttribute("customerlist", customerlist);
			request.setAttribute("projectlist", projectlist);
			
			request.setAttribute("detaillist", detaillist);
			
			
			detailForm.setCusid("");
			detailForm.setProid("");
			detailForm.setStatusid("");
			detailForm.setRemark("");
			detailForm.setDate("");
			detailForm.setUsername("");
			
			
		}else if(search != "" && search != null){
			String[] result = new String[7];
			List projectlist = null;
			List customerlist = null;
			
			try {
				
				customerlist = tblc.select_customer("");
				projectlist = tblp.select_project(cusid);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
						
			request.setAttribute("customerlist", customerlist);
			request.setAttribute("projectlist", projectlist);
			
			
//			detailForm.setId(result[0]);
//			detailForm.setCusid(result[1]);
//			detailForm.setProid(result[2]);
//			detailForm.setStatusid(result[3]);
//			detailForm.setRemark(result[4]);
//			detailForm.setDate(result[5]);
//			detailForm.setUsername(result[6]);
			
			
		}else if(delete != "" && delete != null){
			
			try {
				tbld.delete_from_detail(id);
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
			
			detailForm.setUsername1("");
			detailForm.setStatus("");
			
			
			List detaillist = tbld.select_detail1(cusid, proid);
			List customerlist = tblc.select_customer("");
			
			request.setAttribute("detaillist", detaillist);
			request.setAttribute("customerlist", customerlist);
			
			
			
			
		}else if(showlist != "" && showlist != null){
			String[] result = new String[7];
			List detaillist = null;
			
			try {
				
				detaillist = tbld.select_detail(cusid, proid, statusid, username1);
				
			}  catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
//			detailForm.setId(result[0]);
//			detailForm.setCusid(result[1]);
//			detailForm.setProid(result[2]);
//			detailForm.setStatusid(result[3]);
//			detailForm.setRemark(result[4]);
//			detailForm.setDate(result[5]);
//			detailForm.setUsername(result[6]);
			
			
			List projectlist = tblp.select_project(cusid);
			List customerlist = tblc.select_customer("");
			
		
			request.setAttribute("projectlist", projectlist);
			request.setAttribute("customerlist", customerlist);
			
			request.setAttribute("detaillist", detaillist);
			
	
		}else{
			String[] result = new String[7];
			List customerlist = null;
			
			try {
				
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
