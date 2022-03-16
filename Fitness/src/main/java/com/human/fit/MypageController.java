package com.human.fit;

import java.util.ArrayList;
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
	
	@RequestMapping(value="delInfo")
	public String delInfo(Model model,HttpServletRequest request){
		session_call(request, model);
		String userid=request.getParameter("userid");
		
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
	    Mypage view=mpy.getView(userid); 
		model.addAttribute("userid",view);
		return "Member/delinfo";
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