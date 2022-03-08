package com.human.fit;

import java.util.ArrayList;
import java.util.List;


public interface Iboard {
	
	/*--------VamPa--------*/
	//작가등록
	public void enroll(BoardVO board);
	//게시판 목록
	public List<BoardVO> getBList();
	//게시판 페이징적용한 목록
	public List<BoardVO> getListPaging(Criteria cri);
	//게시판 조회
	public BoardVO getPage(int bno);
    /* 게시판 수정 */
    public int modify(BoardVO board);
    /* 게시판 삭제 */
    public int delete(int bno);
    /* 게시판 총 갯수 */
    public int getTotal(Criteria cri);
    
    public membersA getuserid(String userid);
}
