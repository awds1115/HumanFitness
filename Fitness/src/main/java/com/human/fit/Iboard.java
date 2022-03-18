package com.human.fit;

import java.util.ArrayList;
import java.util.List;


public interface Iboard {
	//	공지사항
	public void N_enroll(BoardVO board);
	public List<BoardVO> N_getListPaging(Criteria cri);
	public BoardVO N_getPage(int bno);
	public int N_modify(BoardVO board);
	public int N_delete(int bno);
	public int N_getTotal(Criteria cri);
	
//	문의사항
	public void QnA_enroll(BoardVO board);
	public List<BoardVO> QnA_getListPaging(Criteria cri);
	public BoardVO QnA_getPage(int bno);
	public int QnA_modify(BoardVO board);
	public int QnA_delete(int bno);
	public int QnA_getTotal(Criteria cri);
    public List<p_reply> QnA_getreply(int bno);
    public List<p_reply> QnA_getbno();
    public int QnA_getGrp(int bno);
    public int QnA_getMaxNo(int bno);
    public void QnA_insertReply(int bno,int grp,String nickname,String p_content);
    public void QnA_deleteReply(int no);
    public void QnA_updateReply(int no,String p_content);
	
	
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
    
    //댓글 불러오기
    public List<p_reply> getreply(int bno);
    //bno 불러오기
    public List<p_reply> getbno();
    //댓글 추가하기
//    public void reply(int bno,String nickname,String p_content);
//    public void insertA(int bno,String nickname,String p_content);
//    public void insertB(int bno,String nickname,String p_content);
    public int getGrp(int bno);
    public int getMaxNo(int bno);
    public void insertReply(int bno,int grp,String nickname,String p_content);
    public void deleteReply(int no);
    public void updateReply(int no,String p_content);
    public void reply_insert2(int bno,int grp,String nickname, String p_content);
}
