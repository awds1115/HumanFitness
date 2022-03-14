package com.human.fit;

import java.util.ArrayList;
import java.util.List;

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
	
	
	
	/* 게시판 목록 페이지 접속(페이징 적용) */
	@RequestMapping(value = "/searchlist", method = RequestMethod.GET)
    public String searchListGET(Model model, SearchPaging sp) {
		iSearch search=sqlSession.getMapper(iSearch.class);
        
        model.addAttribute("list", search.getListPaging(sp));
        
        int total = search.getTotal(sp);
        
        SearchPageMakerDTO pageMake = new SearchPageMakerDTO(sp, total);
        
        model.addAttribute("pageMaker", pageMake);
        
        return "List/search";
        
    }
	
	@RequestMapping("/search")
	public String search() {
		
		return "List/search";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchview", produces="application/json;charset=utf-8", method=RequestMethod.GET)
	public String searchview(HttpServletRequest hsr) {
		String keyword=hsr.getParameter("value");
		System.out.println(keyword);	
		iSearch search=sqlSession.getMapper(iSearch.class);
		ArrayList<Fitsearch> S=search.getSearchList(keyword);
		System.out.println(S.size());
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
		return ja.toString();
	}
}
