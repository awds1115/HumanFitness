package com.human.fit;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Locale;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class MypageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ServletRequest session;
	
	 	@ResponseBody 
	    @RequestMapping(value="/pagecheck", method=RequestMethod.GET,produces="application/json;charset=UTF-8")
	    public String pagecheck(HttpServletRequest hsr) {
	      iMypage mpy=sqlSession.getMapper(iMypage.class);
	      int lines=10;
	       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
	       String find=hsr.getParameter("find"); 
	       int start=lines*pageno+1;
	       JSONArray good=new JSONArray();
	       if(find.equals("")) { 
	    	   ArrayList<contact> pageList = mpy.contactList(start);
	    	   for(int i=0; i<pageList.size(); i++) {
	    		   JSONObject jo=new JSONObject();
	    		   jo.put("no",pageList.get(i).getNo());
	    		   good.add(jo);
	    	   }
	       } else {
	    	   ArrayList<contact> pageList = mpy.findpagingcheck(start,find);
	    	   for(int i=0; i<pageList.size(); i++) {
	    		   JSONObject jo=new JSONObject();
	    		   jo.put("no",pageList.get(i).getNo());
	    		   good.add(jo);
	       } 
	    }
	       return good.toString();
	 	}
	@ResponseBody
    @RequestMapping(value="/paging" ,method=RequestMethod.GET, produces="application/json;charset=UTF-8")
    public String getLines(HttpServletRequest hsr, Model model) {
		
		iMypage mpy=sqlSession.getMapper(iMypage.class);
       int lines=10;
       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
       String find=hsr.getParameter("find"); 
       int start=lines*pageno+1;
       JSONArray ja = new JSONArray();
     if(find.equals("")) { 
       ArrayList<contact> pageList = mpy.contactList(start);
       for(int i=0; i<pageList.size(); i++) { //ArrayList -> JSON 으로 바꾸는 작업 해야함
           JSONObject jo = new JSONObject();
           
           jo.put("no",pageList.get(i).getNo());
           jo.put("name",pageList.get(i).getName());
           jo.put("email",pageList.get(i).getEmail());
           jo.put("mobile",pageList.get(i).getMobile());
           jo.put("message",pageList.get(i).getMessage());
           jo.put("send_dt",pageList.get(i).getSend_dt());
           ja.add(jo);
        }
     } else {
    	 ArrayList<contact> pageList = mpy.findpaging(start,find);
    	 for(int i=0; i<pageList.size(); i++) { //ArrayList -> JSON 으로 바꾸는 작업 해야함
             JSONObject jo = new JSONObject();
             
             jo.put("no",pageList.get(i).getNo());
             jo.put("name",pageList.get(i).getName());
             jo.put("email",pageList.get(i).getEmail());
             jo.put("mobile",pageList.get(i).getMobile());
             jo.put("message",pageList.get(i).getMessage());
             jo.put("send_dt",pageList.get(i).getSend_dt());
             ja.add(jo);
          }
     }
     System.out.println(ja);
      return ja.toString(); 
    }
	
	@ResponseBody
	@RequestMapping(value="/findmail",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findmail(HttpServletRequest request, Model model) {
		iMypage mpy=sqlSession.getMapper(iMypage.class);
			String find=request.getParameter("find");
	       ArrayList<contact> contact=mpy.findmail(find);
	       System.out.println("["+contact.size()+"]");
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<contact.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("no",contact.get(i).getNo());
	          jo.put("name",contact.get(i).getName());
	          jo.put("email",contact.get(i).getEmail());
	          jo.put("mobile",contact.get(i).getMobile());
	          jo.put("message",contact.get(i).getMessage());
	          jo.put("send_dt",contact.get(i).getSend_dt());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	
	@ResponseBody
	@RequestMapping(value="/muldel", produces="application/text;charset=UTF-8")
	public String muldel(HttpServletRequest hsr) {
		iMypage mpy = sqlSession.getMapper(iMypage.class);
			String[] no=hsr.getParameter("check").split(",");
			String str="";
			try {
				for(int i=0;i<no.length;i++) {
					mpy.mail_del(no[i]);
				}
				str="ok";
			} catch(Exception e) {
				str="fail";
			}
		return str;
	}
	
	@ResponseBody
	@RequestMapping(value="/maildel",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String maildel(Model model, HttpServletRequest request) {
		String retval="";
	       try {
	    	   int no=Integer.parseInt(request.getParameter("no"));
	    	   iMypage mpy=sqlSession.getMapper(iMypage.class);
	    	   mpy.maildel(no);
	    	   
	    	   retval="ok";
	          
	       } catch(Exception e) {
	    	   retval="fail";
	       }
	       return retval;
	}
	
	@ResponseBody
	@RequestMapping(value="/mailview",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String mailview(HttpServletRequest request, Model model) {
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
			int no=Integer.parseInt(request.getParameter("no"));
	       ArrayList<contact> contact=mpy.getmailview(no);
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<contact.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("name",contact.get(i).getName());
	          jo.put("email",contact.get(i).getEmail());
	          jo.put("mobile",contact.get(i).getMobile());
	          jo.put("message",contact.get(i).getMessage());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	@ResponseBody
	@RequestMapping(value="/contacting",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String contacting(HttpServletRequest request, Model model) {
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	       ArrayList<contact> contact=mpy.getcontact();
//	       System.out.println("["+contact.size()+"]");
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<contact.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("no",contact.get(i).getNo());
	          jo.put("name",contact.get(i).getName());
	          jo.put("email",contact.get(i).getEmail());
	          jo.put("mobile",contact.get(i).getMobile());
	          jo.put("message",contact.get(i).getMessage());
	          jo.put("send_dt",contact.get(i).getSend_dt());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	
	@RequestMapping(value="/delInfo")
	public String delInfo(Model model,HttpServletRequest request){
		session_call(request, model);
		HttpSession session = request.getSession(true);
		String userid=(String) session.getAttribute("userid");
	    
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	    Mypage view=mpy.getView(userid); 
		model.addAttribute("view",view);
		return "Member/delinfo";
	}
	@RequestMapping(value="/M_contact")
	public String M_contact(Model model, HttpServletRequest request) {
		session_call(request, model);
		
		return "Member/M_contact";
	}
	@ResponseBody
	@RequestMapping(value="/weight",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String weight(Model model, HttpServletRequest request) {
		String retval="";
	       try {
	    	   String userid=request.getParameter("id");
	    	   int weight=Integer.parseInt(request.getParameter("weight"));
	    	   int height=Integer.parseInt(request.getParameter("height"));
	    	   iMypage member=sqlSession.getMapper(iMypage.class);
	    	   member.bmicheck(userid,weight,height);
	    	   
	    	   retval="ok";
	          
	       } catch(Exception e) {
	    	   retval="fail";
	       }
	       return retval;
	}
	@ResponseBody
	@RequestMapping(value="/ticketed",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String ticketed(Model model, HttpServletRequest request) {
		String retval="";
	       try {
	    	   String userid=request.getParameter("id");
	    	   String sports=request.getParameter("sports");
	    	   iMypage member=sqlSession.getMapper(iMypage.class);
	    	   member.ticketed(userid,sports);
	    	   retval="ok";
	          
	       } catch(Exception e) {
	    	   retval="fail";
	       }
	       return retval;
	}
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model, HttpServletRequest request) {
		session_call(request, model);
		HttpSession session = request.getSession(true);
		String userid=(String) session.getAttribute("userid");
		iMypage mpy=sqlSession.getMapper(iMypage.class);
	    Mypage view=mpy.getView(userid); 
	    Mypage view2=mpy.getWeight(userid);
		model.addAttribute("view",view);
		model.addAttribute("view2",view2);
		return "Member/Mypage";
	}
	@ResponseBody
	@RequestMapping(value="/ticketing",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String ticketing(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	       ArrayList<ticket> ticket=mpy.getticket(id);
	       System.out.println(ticket.size());
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<ticket.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("name",ticket.get(i).getSports_name());
	          jo.put("start",ticket.get(i).getStart_dt());
	          jo.put("end",ticket.get(i).getEnd_dt());
	          
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	@RequestMapping(value="/M_update",method=RequestMethod.GET)
	public String M_update(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(true);
		session_call(request, model);
		String userid=(String) session.getAttribute("userid");
		System.out.println("["+userid+"]");
		
	    iMypage mpy=sqlSession.getMapper(iMypage.class); 
	    Mypage view=mpy.getView(userid); 
		model.addAttribute("view",view);
		return "Member/M_update";
	}
	@RequestMapping(value="/Mupdate",method=RequestMethod.GET)
	public String Mupdate(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String nname=request.getParameter("nname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
		mpy.Mupdate(id,pw,nname,email,phone,address);
		
		return "Member/Mypage";
	}
	
	@RequestMapping(value="/N_update",method=RequestMethod.GET)
	public String Nupdate(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String nname=request.getParameter("nname");
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
		mpy.Nupdate(id,nname);
		return "Member/Mypage";
	}
	@ResponseBody
	@RequestMapping(value="/pwCheck",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String pwCheck(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	       ArrayList<Mypage> pwCheck=mpy.getpwCheck(id);
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<pwCheck.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("pw",pwCheck.get(i).getPassword());
	          ja.add(jo);
	       }
	    return ja.toString(); 
}

	@ResponseBody
	@RequestMapping(value="/quit",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public String quitcheck(HttpServletRequest request, Model model) {
		
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	       ArrayList<Mypage> MCheck=mpy.getMCheck();
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<MCheck.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("id",MCheck.get(i).getUserid());
	          jo.put("pw",MCheck.get(i).getPassword());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	@ResponseBody
	@RequestMapping(value="/quitMember",method=RequestMethod.POST)
	public String quitMember(HttpServletRequest request, Model model) {
		String retval="";
	       try {
	    	   String userid=request.getParameter("id");
	    	   iMypage member=sqlSession.getMapper(iMypage.class);
	    	   member.quitMember(userid);
	    	   
//	    	   HttpSession session = request.getSession(true);
//		       session.invalidate();
	    	   retval="ok";
	          
	       } catch(Exception e) {
	    	   retval="fail";
	       }
	       return retval;
	}
		
	@ResponseBody
	@RequestMapping(value="/dubcheck",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String dubcheck(HttpServletRequest request, Model model) {
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	       ArrayList<Mypage> MCheck=mpy.getMCheck();
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<MCheck.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("nickname",MCheck.get(i).getNickname());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	public void session_call(HttpServletRequest request, Model model) {
	      HttpSession session = request.getSession(true);
	         int type1=0;
	         String userid="";
	         String nickname="";
	         
	         if(session.getAttribute("userid")==null) {
	            userid="null";
	         } else {
	            userid=(String) session.getAttribute("userid");
	         }
	         if(session.getAttribute("type")==null){
	            type1=0;
	         } else {
	            type1=(int) session.getAttribute("type");
	         }
	         if(session.getAttribute("nickname")==null) {
	            nickname="null";
	         } else {
	            nickname=(String) session.getAttribute("nickname");
	         }
//	         int type=Integer.parseInt(type1);
	         model.addAttribute("userid",userid);
	         model.addAttribute("type",type1);
	         model.addAttribute("nickname",nickname);
	   }

}