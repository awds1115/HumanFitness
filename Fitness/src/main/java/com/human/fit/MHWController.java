package com.human.fit;

import java.util.ArrayList;
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
public class MHWController {
	
	@Autowired
	private SqlSession sqlSession;
	
    	
    @ResponseBody
    @RequestMapping(value="/paging3" ,method=RequestMethod.GET, produces="application/text;charset=UTF-8")
    public String getLines(HttpServletRequest hsr) {
       iSearch search=sqlSession.getMapper(iSearch.class);
       String keyword=hsr.getParameter("keyword");
       int lines=50;
       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
//       System.out.println(pageno);
       int start=lines*pageno+1;
       int end=lines*(pageno+1);
//       System.out.println(start);
//       System.out.println(end);
       ArrayList<Fitsearch> S = search.PagingList(start,keyword);
       System.out.println("["+S.size()+"]");
      
       JSONArray ja = new JSONArray();
       for(int i=0; i<S.size(); i++) { //ArrayList -> JSON 으로 바꾸는 작업 해야함
         JSONObject jo = new JSONObject();
         jo.put("num", S.get(i).getNum());
		 jo.put("name", S.get(i).getName());
		 jo.put("kcal", S.get(i).getKcal());
		 jo.put("carbohydrate", S.get(i).getCarbohydrate());
		 jo.put("protein", S.get(i).getProtein());
		 jo.put("fat", S.get(i).getFat());
		 jo.put("sugars", S.get(i).getSugars());
		 jo.put("na", S.get(i).getNa());
		 jo.put("cholesterol", S.get(i).getCholesterol());
		 jo.put("saturated_fatty_acids", S.get(i).getSaturated_fatty_acids());
		 jo.put("transfat", S.get(i).getTransfat());
         ja.add(jo);
   }
//      System.out.println(ja.toString());
       	 return ja.toString(); 
    }
	
    
    @ResponseBody 
    @RequestMapping(value="/pagecheck3", method=RequestMethod.GET,produces="application/text;charset=UTF-8")
    public String pagecheck(HttpServletRequest hsr) {
       iSearch search=sqlSession.getMapper(iSearch.class);
       String keyword=hsr.getParameter("keyword");
       int lines=50;
       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
       int start=lines*pageno+1;
//       System.out.println(start);
//       System.out.println(end);
//       System.out.println(keyword);
       ArrayList<Fitsearch> s = search.PagingList(start, keyword);
       
//       System.out.println(s.size());
       JSONArray ja=new JSONArray();
       for(int i=0; i<s.size(); i++) {
         JSONObject jo=new JSONObject();
         jo.put("num",s.get(i).getNum()); // 데이터 체크
		 ja.add(jo);
       }
         return ja.toString();
    }
    
    
	@RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchlist(HttpServletRequest hsr, Model model) {
	
        return "List/search";
    }
	
	
	@ResponseBody
	@RequestMapping(value="/searchview", produces="application/json;charset=utf-8", method=RequestMethod.GET)
	public String searchview(HttpServletRequest hsr) {
		
		String keyword=hsr.getParameter("value");
		System.out.println(keyword);	
		iSearch search=sqlSession.getMapper(iSearch.class);
		int alldata=0;
		alldata=search.getDataTotal(keyword);
		System.out.println(alldata);
		ArrayList<Fitsearch> S=search.getSearchList1(keyword);
//		System.out.println(S.size());
		JSONArray ja=new JSONArray();
		for(int i=0; i<S.size(); i++) {
			JSONObject jo=new JSONObject();
			jo.put("num", S.get(i).getNum());
			jo.put("name", S.get(i).getName());
			jo.put("kcal", S.get(i).getKcal());
			jo.put("carbohydrate", S.get(i).getCarbohydrate());
			jo.put("protein", S.get(i).getProtein());
			jo.put("fat", S.get(i).getFat());
			jo.put("sugars", S.get(i).getSugars());
			jo.put("na", S.get(i).getNa());
			jo.put("cholesterol", S.get(i).getCholesterol());
			jo.put("saturated_fatty_acids", S.get(i).getSaturated_fatty_acids());
			jo.put("transfat", S.get(i).getTransfat());
			ja.add(jo);
		}
		ja.add(alldata);
		return ja.toString();
	}
}
