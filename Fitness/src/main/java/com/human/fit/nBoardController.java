package com.human.fit;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
public class nBoardController {

    private static final Logger log = LoggerFactory.getLogger(nBoardController.class);

    @Autowired
	private SqlSession sqlSession;
    
//    @RequestMapping("/list")
//    public String boardListGET(Model model) {
//        
//        log.info("게시판 목록 페이지 진입");
//        Iboard board=sqlSession.getMapper(Iboard.class);
//        model.addAttribute("list",board.getBList());
//        
//        return "Notice/list";
//    }
    
    @RequestMapping("/list")
    public String boardListGET(Model model,Criteria cri,HttpServletRequest hsr) {
        
//        log.info("게시판 목록 페이지 진입");
        Iboard board=sqlSession.getMapper(Iboard.class);
        model.addAttribute("list",board.getListPaging(cri));
        
        int total = board.getTotal(cri);
        
        PageDTO pageMake = new PageDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
    	HttpSession session = hsr.getSession(true);
        String userid = (String)session.getAttribute("userid");
       
        model.addAttribute("userid",board.getuserid(userid));
        
        System.out.println("userid : "+userid);
        
        return "Notice/list";
        
    }
    
    @RequestMapping("/enroll")
    // => @RequestMapping(value="enroll", method=RequestMethod.GET)
    public String boardEnrollGET(Model model,HttpServletRequest hsr) {
        
//        log.info("게시판 등록 페이지 진입");
    	
       	HttpSession session = hsr.getSession(true);
       	
       	Iboard board=sqlSession.getMapper(Iboard.class);
        String userid = (String)session.getAttribute("userid");
       
        model.addAttribute("userid",board.getuserid(userid));
        
        System.out.println("userid : "+userid);
    	return "Notice/enroll";
    }
//    
    @RequestMapping(value="/enroll",method=RequestMethod.POST)
    public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
        
        log.info("BoardVO : " + board);

        Iboard board1=sqlSession.getMapper(Iboard.class);
        board1.enroll(board);
        
        rttr.addFlashAttribute("result", "enrol success");
        
        return "redirect:/list";
        
    }
    
    @RequestMapping("/get")
    public String boardGetPageGET(int bno,Model model,Criteria cri,HttpServletRequest hsr) {
    	
    	Iboard board=sqlSession.getMapper(Iboard.class);
    	
    	model.addAttribute("pageInfo", board.getPage(bno));
    	
    	model.addAttribute("cri",cri);
    	
    	HttpSession session = hsr.getSession(true);
        String userid = (String)session.getAttribute("userid");
       
        model.addAttribute("userid",board.getuserid(userid));
         
        System.out.println("userid : "+userid);
         
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
}
