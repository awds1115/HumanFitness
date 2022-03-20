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
	@RequestMapping(value="/findstating",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findmail(HttpServletRequest request, Model model) {
		iMypage mpy=sqlSession.getMapper(iMypage.class);
			String find=request.getParameter("find");
			String stat=request.getParameter("stat");
			JSONArray ja= new JSONArray();
			if(stat.equals("0")) {
	       ArrayList<ticket> pageList=mpy.findsearching(find);
//	       System.out.println("["+contact.size()+"]");
	       for(int i=0; i<pageList.size(); i++) { 
	          JSONObject jo=new JSONObject();
			    jo.put("userid",pageList.get(i).getUserid());
			    jo.put("name",pageList.get(i).getSports_name());
			    jo.put("start",pageList.get(i).getStart_dt());
			    jo.put("end",pageList.get(i).getEnd_dt());
			    jo.put("refund",pageList.get(i).getRef_name());
			   ja.add(jo);
	       }
	       } else {
	    	   ArrayList<ticket> pageList=mpy.finddouble(find,stat);
		       for(int i=0; i<pageList.size(); i++) { 
			          JSONObject jo=new JSONObject();
					    jo.put("userid",pageList.get(i).getUserid());
					    jo.put("name",pageList.get(i).getSports_name());
					    jo.put("start",pageList.get(i).getStart_dt());
					    jo.put("end",pageList.get(i).getEnd_dt());
					    jo.put("refund",pageList.get(i).getRef_name());
					   ja.add(jo);
	       }
			}
	    return ja.toString(); 
	}
	@ResponseBody 
    @RequestMapping(value="/pagecheck4", method=RequestMethod.GET,produces="application/json;charset=UTF-8")
    public String pagecheck(HttpServletRequest hsr) {
      iMypage mpy=sqlSession.getMapper(iMypage.class);
      int lines=10;
       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
       String find=hsr.getParameter("find"); 
       String stat=hsr.getParameter("stat");
       int start=lines*pageno+1;
       JSONArray ja=new JSONArray();
       if(find.equals("") && stat.equals("0")) { 
    	   ArrayList<ticket> pageList = mpy.getRefundpaging(start);
    	   for(int i=0; i<pageList.size(); i++) {
    		   JSONObject jo=new JSONObject();
    		   jo.put("no",pageList.get(i).getUserid());
    		   ja.add(jo);
    	   }
       } else if(!stat.equals("0") && find.equals("")) {
    	   ArrayList<ticket> pageList=mpy.getstatpaging(stat,start);
           for(int i=0; i<pageList.size(); i++) { 
              JSONObject jo=new JSONObject();
              jo.put("no",pageList.get(i).getUserid());
              ja.add(jo);
           }
       } else if(!stat.equals("0") && !find.equals("")){
    	   ArrayList<ticket> pageList = mpy.getmultipaging(start,find,stat);
           for(int i=0; i<pageList.size(); i++) { 
               JSONObject jo=new JSONObject();
               jo.put("no",pageList.get(i).getUserid());
               ja.add(jo);
            }
       }else {
    	   ArrayList<ticket> pageList = mpy.searchingList(start,find);
    	   for(int i=0; i<pageList.size(); i++) {
    		   JSONObject jo=new JSONObject();
    		   jo.put("no",pageList.get(i).getUserid());
    		   ja.add(jo);
       } 
    }
       return ja.toString();
 	}
@ResponseBody
@RequestMapping(value="/paging4" ,method=RequestMethod.GET, produces="application/json;charset=UTF-8")
public String getLines(HttpServletRequest hsr, Model model) {
	
	iMypage mpy=sqlSession.getMapper(iMypage.class);
   int lines=10;
   int pageno=Integer.parseInt(hsr.getParameter("pageno"));
   String find=hsr.getParameter("find"); 
   String stat=hsr.getParameter("stat");
   int start=lines*pageno+1;
   JSONArray ja = new JSONArray();
   if(find.equals("") && stat.equals("0")) { 
	   ArrayList<ticket> pageList = mpy.getRefundpaging(start);
	   for(int i=0; i<pageList.size(); i++) {
		   JSONObject jo=new JSONObject();
		    jo.put("userid",pageList.get(i).getUserid());
		    jo.put("name",pageList.get(i).getSports_name());
		    jo.put("start",pageList.get(i).getStart_dt());
		    jo.put("end",pageList.get(i).getEnd_dt());
		    jo.put("refund",pageList.get(i).getRef_name());
		   ja.add(jo);
	   }
   } else if(!stat.equals("0") && find.equals("")) {
	   ArrayList<ticket> pageList=mpy.getstatpaging(stat,start);
       for(int i=0; i<pageList.size(); i++) { 
          JSONObject jo=new JSONObject();
          jo.put("userid",pageList.get(i).getUserid());
          jo.put("name",pageList.get(i).getSports_name());
          jo.put("start",pageList.get(i).getStart_dt());
          jo.put("end",pageList.get(i).getEnd_dt());
          jo.put("refund",pageList.get(i).getRef_name());
          ja.add(jo);
       }
   } else if(!stat.equals("0") && !find.equals("")){
	   ArrayList<ticket> pageList = mpy.getmultipaging(start,find,stat);
       for(int i=0; i<pageList.size(); i++) { 
           JSONObject jo=new JSONObject();
           jo.put("userid",pageList.get(i).getUserid());
           jo.put("name",pageList.get(i).getSports_name());
           jo.put("start",pageList.get(i).getStart_dt());
           jo.put("end",pageList.get(i).getEnd_dt());
           jo.put("refund",pageList.get(i).getRef_name());
           ja.add(jo);
        }
   }else {
	   ArrayList<ticket> pageList = mpy.searchingList(start,find);
	   for(int i=0; i<pageList.size(); i++) {
		   JSONObject jo=new JSONObject();
		    jo.put("userid",pageList.get(i).getUserid());
		    jo.put("name",pageList.get(i).getSports_name());
		    jo.put("start",pageList.get(i).getStart_dt());
		    jo.put("end",pageList.get(i).getEnd_dt());
		    jo.put("refund",pageList.get(i).getRef_name());
		   ja.add(jo);
   } 
}
  return ja.toString(); 
}
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
