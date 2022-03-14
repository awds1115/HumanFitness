package com.human.fit;

import java.util.ArrayList;
import java.util.List;

public interface iSearch {
	ArrayList<Fitsearch> getSearchList(String keyword);
	
	/* 게시판 목록 */
	public List<Fitsearch> getList();
	
	/* 게시판 목록(페이징 적용) */
	public List<Fitsearch> getListPaging(SearchPaging sp);
	
	/* 게시판 조회 */
	public Fitsearch getPage(int num);
	
	/* 게시판 총 개수 */
	public int getTotal(SearchPaging sp);
}
	
