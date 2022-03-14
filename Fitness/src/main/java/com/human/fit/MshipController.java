package com.human.fit;

import java.util.ArrayList;

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
public class MshipController {
 
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/mship", produces="application/json;charset=utf-8")
    public String MtypeList(HttpServletRequest hsr) {
	       
         return "Member/Mship"; 
    }
	@RequestMapping(value="/map", produces="application/json;charset=utf-8")
    public String Map(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession();
		session_call(request, model);
		String userid=(String) session.getAttribute("userid");
		model.addAttribute("userid",userid);
		
         return "map"; 
    }
	@ResponseBody
	@RequestMapping(value="/sportslist",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String getmshiplist(HttpServletRequest request, Model model) {
		iMship mship=sqlSession.getMapper(iMship.class);
	       ArrayList<Sportlist> m=mship.getSports();
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<m.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("code",m.get(i).getCode());
	          jo.put("s_name",m.get(i).getSports_name());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	@ResponseBody
	@RequestMapping(value="/mshiplist",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String getSportslist(HttpServletRequest request, Model model) {
		iMship mship=sqlSession.getMapper(iMship.class);

	       ArrayList<Mshiplist> m=mship.myMship();
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<m.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("no",m.get(i).getNo());
	          jo.put("s_name",m.get(i).getSports_name());
	          jo.put("month",m.get(i).getMonth());
	          jo.put("price",m.get(i).getPrice());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
	@RequestMapping("/CU_Mship")
	public String cu_sports(HttpServletRequest hsr) {
		String no1=hsr.getParameter("no");
		int code=Integer.parseInt(hsr.getParameter("code"));
		String month=hsr.getParameter("month");
		int price=Integer.parseInt(hsr.getParameter("price"));
		int M_code=Integer.parseInt(hsr.getParameter("M_code"));
		iMship mship=sqlSession.getMapper(iMship.class);
		if(no1.equals("")) { //insert
		mship.Mshipadd(code,month,price,M_code);
		}else {
			int no=Integer.parseInt(no1);
			mship.Mshipupdate(no,price,month,M_code);
		}
		return "Member/Mship";
	}
	@RequestMapping("D_Mship")
	public String delete_sports(HttpServletRequest hsr) {
		String no1=hsr.getParameter("no");
		
		iMship mship=sqlSession.getMapper(iMship.class);

		int no=Integer.parseInt(no1);
		mship.Mshipdelete(no);
		
		return "Member/Mship";
	}
	@RequestMapping("/CU_sports_type")
	public String cu_sports_type(HttpServletRequest hsr) {
		String code1=hsr.getParameter("code");
		String Sportsname=hsr.getParameter("Sportsname");
		iMship mship=sqlSession.getMapper(iMship.class);
		if(code1.equals("")) { //insert
		mship.Sportsadd(Sportsname);
		}else {
			int code=Integer.parseInt(code1);
			mship.Sportsupdate(code,Sportsname);
		}
		return "Member/Mship";
	}
	@RequestMapping("/D_sports_type")
	public String D_sports_type(HttpServletRequest hsr) {
		int code=Integer.parseInt(hsr.getParameter("code"));
		iMship mship=sqlSession.getMapper(iMship.class);
		mship.Sportsdelete(code);
		return "Member/Mship";
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
//           int type=Integer.parseInt(type1);
           model.addAttribute("userid",userid);
           model.addAttribute("type",type1);
           model.addAttribute("nickname",nickname);
     }
}
