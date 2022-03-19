package com.human.fit;

import java.util.ArrayList;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class refundController {
	@Autowired
	private SqlSession sqlSession;
	
	private ServletRequest session;
	
	
	@ResponseBody
	@RequestMapping(value="/stating", method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public String stating(HttpServletRequest request) {
		iMypage mpy=sqlSession.getMapper(iMypage.class);
		String stat=request.getParameter("stat");
		
       ArrayList<ticket> refund=mpy.getstatList(stat);
       System.out.println("["+refund.size()+"]");
       JSONArray ja= new JSONArray();
       for(int i=0; i<refund.size(); i++) { 
          JSONObject jo=new JSONObject();
          jo.put("userid",refund.get(i).getUserid());
          jo.put("name",refund.get(i).getSports_name());
          jo.put("start",refund.get(i).getStart_dt());
          jo.put("end",refund.get(i).getEnd_dt());
          jo.put("refund",refund.get(i).getRef_name());
          ja.add(jo);
       }
    return ja.toString(); 
	}
	@ResponseBody
	@RequestMapping(value="/delref", method=RequestMethod.GET,produces="application/text;charset=UTF-8")
	public String delref(HttpServletRequest request) {
		String retval="";
	       try {
	    	   iMypage mpy=sqlSession.getMapper(iMypage.class);
	    	   String userid=request.getParameter("userid");
	    	   String spname=request.getParameter("spname");
	    	   int ref_no=Integer.parseInt(request.getParameter("ref_no"));
	    	   mpy.delref(userid,spname,ref_no);
	    	   retval="ok";
	       } catch(Exception e) {
	    	   retval="fail";
	    	   e.printStackTrace();
	       }
	       return retval;	
	}
	@ResponseBody
	@RequestMapping(value="/refunding", method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	public String refunding(HttpServletRequest request) {
		iMypage mpy=sqlSession.getMapper(iMypage.class);
		mpy.updateref();
       ArrayList<ticket> refund=mpy.getRefundList();
       System.out.println("["+refund.size()+"]");
       JSONArray ja= new JSONArray();
       for(int i=0; i<refund.size(); i++) { 
          JSONObject jo=new JSONObject();
          jo.put("userid",refund.get(i).getUserid());
          jo.put("name",refund.get(i).getSports_name());
          jo.put("start",refund.get(i).getStart_dt());
          jo.put("end",refund.get(i).getEnd_dt());
          jo.put("refund",refund.get(i).getRef_name());
          ja.add(jo);
       }
    return ja.toString(); 
	}
	@RequestMapping(value="/refund")
	public String refund(HttpServletRequest hsr, Model model) {
		iMypage mpy=sqlSession.getMapper(iMypage.class);
		ArrayList<ticket> refund=mpy.getref_type();
		model.addAttribute("stat",refund);
		return "Member/refund";
	}
}
