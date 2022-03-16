package com.human.fit;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private SqlSession sqlSession;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		session_call(request, model);
		return "home";
	}
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public String contact(HttpServletRequest hsr, Model model) {
		String name=hsr.getParameter("name");
		String email=hsr.getParameter("email");
		String mobile=hsr.getParameter("phone");
		String message=hsr.getParameter("message");
		iMypage mpy=sqlSession.getMapper(iMypage.class); 
		mpy.newcontact(name,email,mobile,message);
		return "redirect:/home";
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
//	      int type=Integer.parseInt(type1);
	      model.addAttribute("userid",userid);
	      model.addAttribute("type",type1);
	      model.addAttribute("nickname",nickname);
	}
}
