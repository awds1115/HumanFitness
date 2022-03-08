package com.human.fit;

import java.util.ArrayList;
import java.util.Locale;

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
public class GymController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/yoga", method = RequestMethod.GET)
	public String doYoga(Locale locale, Model model) {

		return "List/Yoga";
	}
 	@RequestMapping(value = "/pt", method = RequestMethod.GET)
	public String doPT(Locale locale, Model model) {

		return "List/PT";
	}
	@RequestMapping(value = "/pilates", method = RequestMethod.GET)
	public String doPilates(Locale locale, Model model) {

		return "List/Pilates";
	}
	@RequestMapping(value = "/health", method = RequestMethod.GET)
	public String doHealth(Locale locale, Model model) {

		return "List/Health";
	}
	
	@ResponseBody
	@RequestMapping(value="/video",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String video(HttpServletRequest request, Model model) {
		iVideo mpy=sqlSession.getMapper(iVideo.class);
			int no=Integer.parseInt(request.getParameter("no"));
	       ArrayList<Video> NoVideo=mpy.getVideo(no);
	       JSONArray ja= new JSONArray();
	       for(int i=0; i<NoVideo.size(); i++) { 
	          JSONObject jo=new JSONObject();
	          jo.put("url",NoVideo.get(i).getUrl());
	          ja.add(jo);
	       }
	    return ja.toString(); 
	}
}
