package com.human.fit;

import java.util.List;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
public class nBoardController {

    private static final Logger log = LoggerFactory.getLogger(nBoardController.class);

    @Autowired
	private SqlSession sqlSession;
    
    
    //공지사항용
    
    
    
    
    //커뮤니티용
    @RequestMapping("/list")
    public String boardListGET(Model model,Criteria cri,HttpServletRequest hsr) {
        
//        log.info("게시판 목록 페이지 진입");
        Iboard board=sqlSession.getMapper(Iboard.class);
        model.addAttribute("list",board.getListPaging(cri));
        
        int total = board.getTotal(cri);
        
        PageDTO pageMake = new PageDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
    	HttpSession session = hsr.getSession(true);
        
        session_call(hsr, model);
        
        return "Notice/Notice";
        
    }
    
    @RequestMapping("/enroll")
    public String boardEnrollGET(Model model,HttpServletRequest hsr) {
    	
       	HttpSession session = hsr.getSession(true);
       	
       	
       	Iboard board=sqlSession.getMapper(Iboard.class);
        String userid = (String)session.getAttribute("userid");
        session_call(hsr, model);
    	return "Notice/enroll";
    }
    
    @RequestMapping(value="/enroll",method=RequestMethod.POST)
    public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr,HttpServletRequest hsr,Model model) {
        
        log.info("BoardVO : " + board);

        Iboard board1=sqlSession.getMapper(Iboard.class);
        board1.enroll(board);
        
        HttpSession session = hsr.getSession(true);
        session_call(hsr, model);
        rttr.addFlashAttribute("result", "enrol success");
        
        return "redirect:/list";
        
    }
    
    @RequestMapping("/get")
    public String boardGetPageGET(int bno,Model model,Criteria cri,HttpServletRequest hsr) {
    	
    	Iboard board=sqlSession.getMapper(Iboard.class);
    	
    	model.addAttribute("pageInfo", board.getPage(bno));
    	
    	model.addAttribute("cri",cri);
    	
    	HttpSession session = hsr.getSession(true);
        
        List<p_reply> p1 = board.getreply(bno);
        model.addAttribute("p1",p1);
        session_call(hsr, model);
        
        
         
    	return "Notice/get";
    }
    
    @RequestMapping("/modify")
    public String boardModifyGET(int bno, Model model, Criteria cri) {
        
    	Iboard board1=sqlSession.getMapper(Iboard.class);
    	
        model.addAttribute("pageInfo", board1.getPage(bno));
        
        model.addAttribute("cri",cri);
        
        return "Notice/modify";

    }
    
    @RequestMapping(value="/modify",method=RequestMethod.POST)
    public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
        
    	Iboard board1=sqlSession.getMapper(Iboard.class);
    	
        board1.modify(board);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/list";
        
    }
    
    @RequestMapping(value="/delete",method=RequestMethod.POST)
    public String boardDeletePOST(int bno, RedirectAttributes rttr) {
        
    	Iboard board1=sqlSession.getMapper(Iboard.class);
    	
        board1.delete(bno);
        
        rttr.addFlashAttribute("result", "delete success");
        
        return "redirect:/list";
        
    }
    
//    댓글작성
    @ResponseBody
    @RequestMapping(value="/reply",method=RequestMethod.POST)
    public String replyinsert(HttpServletRequest hsr,RedirectAttributes rttr) {
        System.out.println("왔니");
        int bno = Integer.parseInt(hsr.getParameter("bno"));
        String nickname = hsr.getParameter("nickname");
        String p_content = hsr.getParameter("p_content");
        
        System.out.println(bno);
        System.out.println(nickname);
        System.out.println(p_content);
        Iboard board1=sqlSession.getMapper(Iboard.class);
        
        int n = board1.getGrp(bno);
        int grp = n+1;
        System.out.println(grp);
        String retval="";
        try {
        	board1.insertReply(bno,grp,nickname,p_content);
            retval=  Integer.toString(grp)+"," +board1.getMaxNo(bno);
        } catch(Exception e) {
        	e.printStackTrace();
        	retval="fail";
        }
        return retval;
       
        
        
    }
//    //댓글 삭제
//    @ResponseBody
//    @RequestMapping(value="/replyDelete",method=RequestMethod.POST)
//    public String replydelete(HttpServletRequest hsr,RedirectAttributes rttr) {
//        int no = Integer.parseInt(hsr.getParameter("no"));
//        
//        System.out.println(no);
//        Iboard board1=sqlSession.getMapper(Iboard.class);
//        
//
//        board1.deleteReply(no);
//
//        return "ok";
//       
//        
//        
//    }
    //댓글 삭제
    @ResponseBody
    @RequestMapping(value="/replyDelete",method=RequestMethod.POST)
    public String replydelete(HttpServletRequest hsr,RedirectAttributes rttr) {
        int no = Integer.parseInt(hsr.getParameter("no"));
        
        System.out.println(no);
        Iboard board1=sqlSession.getMapper(Iboard.class);
        

        board1.deleteReply(no);

        return "ok";
       
        
        
    }
    //댓글 업데이트
    @ResponseBody
    @RequestMapping(value="/replyUpdate",method=RequestMethod.POST)
    public String replyUpdate(HttpServletRequest hsr,RedirectAttributes rttr) {
        int no = Integer.parseInt(hsr.getParameter("no"));
        String p_content = hsr.getParameter("p_content");
        
        System.out.println(no);
        Iboard board1=sqlSession.getMapper(Iboard.class);
        

        board1.updateReply(no,p_content);

        return "ok";
       
        
        
    }
    //대댓글 작성
    @ResponseBody
    @RequestMapping(value="/reply2",method=RequestMethod.POST)
    public String reply_insert2(HttpServletRequest hsr,RedirectAttributes rttr) {
        int bno = Integer.parseInt(hsr.getParameter("bno"));
        int grp = Integer.parseInt(hsr.getParameter("grp"));
        String nickname = hsr.getParameter("nickname");
        String p_content = hsr.getParameter("p_content");
        
     
        Iboard board1=sqlSession.getMapper(Iboard.class);
        

        board1.reply_insert2(bno,grp,nickname,p_content);

        return "ok";
       
        
        
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
           
//           System.out.println("nickname : "+nickname);
     }
}
