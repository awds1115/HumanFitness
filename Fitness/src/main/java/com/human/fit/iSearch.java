package com.human.fit;

import java.util.ArrayList;
import java.util.List;

public interface iSearch {	

	/* 데이터 총 개수 */
	public int getDataTotal(String keyword);

	public ArrayList<Fitsearch> getSearchList1(String keyword);

	public ArrayList<Fitsearch> PagingList(int start,String keyword);
	
}
	
