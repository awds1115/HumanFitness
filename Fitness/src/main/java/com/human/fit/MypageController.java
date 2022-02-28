package com.human.fit;

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


@Controller
public class MypageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ServletRequest session;
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model, HttpServletRequest request) {
//		HttpSession session = request.getSession(true);
//		String type1="";
//		String userid="";
//		
//		if(session.getAttribute("userid")==null) {
//			userid="null";
//		} else {
//			userid=(String) session.getAttribute("userid");
//		}
//		if(session.getAttribute("type")==null){
//			type1="2";
//		} else {
//			type1=(String) session.getAttribute("type");
//		}
//		int type=Integer.parseInt(type1);
//		model.addAttribute("type",type);
//		model.addAttribute("userid",userid);
		String userid="ora_user";
	    iMypage mpy=sqlSession.getMapper(iMypage.class); 
	    Mypage view=mpy.getView(userid); 
		model.addAttribute("userid",view);
		return "Member/Mypage";
	}
}
