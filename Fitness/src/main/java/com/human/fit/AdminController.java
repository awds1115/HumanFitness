package com.human.fit;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class AdminController {
	@Autowired
	private SqlSession sqlSession;
	/* private ServletRequest session; */
	 
	
	@RequestMapping("/viewmember")
	public String Member(HttpServletRequest hsr, Model model) {
		session_call(hsr, model);
		return "Member/Member";
	}
	
	@ResponseBody
    @RequestMapping(value="/findmember", produces="application/json;charset=utf-8")
    public String FidnMember(HttpServletRequest hsr) {
       iAdmin admin = sqlSession.getMapper(iAdmin.class);
       String keyword = hsr.getParameter("keyword");
        ArrayList<membersA> Flist=admin.findMem(keyword);
        System.out.println("Flist:"+Flist);
        
        JSONArray ja= new JSONArray();
         for(int i=0; i<Flist.size(); i++) { 
            JSONObject jo=new JSONObject();
            jo.put("name",Flist.get(i).getName());
            jo.put("nickname",Flist.get(i).getNickname());
            jo.put("userid",Flist.get(i).getUserid());
            jo.put("age",Flist.get(i).getAge());
            jo.put("gender",Flist.get(i).getGender());
            jo.put("mobile",Flist.get(i).getMobile());
            jo.put("email",Flist.get(i).getEmail());
            jo.put("mtype",Flist.get(i).getMtype());
            ja.add(jo);
         }
         return ja.toString(); 
    }
	
	@ResponseBody 
    @RequestMapping(value="/pagecheck", produces="application/text;charset=UTF-8")
    public String pagecheck(HttpServletRequest hsr) {
	       iAdmin admin = sqlSession.getMapper(iAdmin.class);
	      int lines=10;
	       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
	       int start=lines*pageno+1;
	       int end=lines*(pageno+1);
	       ArrayList<membersA> pageList = admin.paging(start);
	       System.out.println(pageList.size());
	      JSONArray ja=new JSONArray();
	      for(int i=0; i<pageList.size(); i++) {
	         JSONObject jo=new JSONObject();
	         jo.put("userid",pageList.get(i).getUserid());
	         ja.add(jo);
	      }
	      return ja.toString();
    }
	
	@ResponseBody
    @RequestMapping(value="/paging", produces="application/text;charset=UTF-8")
    public String getLines(HttpServletRequest hsr, Model model) {
	       iAdmin admin = sqlSession.getMapper(iAdmin.class);
       int lines=10;
       int pageno=Integer.parseInt(hsr.getParameter("pageno"));
//       System.out.println(pageno);
       int start=lines*pageno+1;
       int end=lines*(pageno+1);
//       System.out.println(start);
//       System.out.println(end);
       ArrayList<membersA> pageList = admin.paging(start);
//       System.out.println("["+pageList.size()+"]");
      
       JSONArray ja = new JSONArray();
      for(int i=0; i<pageList.size(); i++) { 
          JSONObject jo=new JSONObject();
          jo.put("name",pageList.get(i).getName());
          jo.put("nickname",pageList.get(i).getNickname());
          jo.put("userid",pageList.get(i).getUserid());
          jo.put("age",pageList.get(i).getAge());
          jo.put("gender",pageList.get(i).getGender());
          jo.put("mobile",pageList.get(i).getMobile());
          jo.put("email",pageList.get(i).getEmail());
          jo.put("mtype",pageList.get(i).getMtype());
          ja.add(jo);
   }
//      System.out.println(ja.toString());
      return ja.toString(); 
    }
	
	@ResponseBody
    @RequestMapping(value="/member", produces="application/json;charset=utf-8")
    public String Members() {
       iAdmin admin = sqlSession.getMapper(iAdmin.class);
       
        ArrayList<membersA> Alist=admin.members_admin();
        System.out.println("Alist:"+Alist);
        
        JSONArray ja= new JSONArray();
         for(int i=0; i<Alist.size(); i++) { 
            JSONObject jo=new JSONObject();
            jo.put("name",Alist.get(i).getName());
            jo.put("nickname",Alist.get(i).getNickname());
            jo.put("userid",Alist.get(i).getUserid());
            jo.put("age",Alist.get(i).getAge());
            jo.put("gender",Alist.get(i).getGender());
            jo.put("mobile",Alist.get(i).getMobile());
            jo.put("email",Alist.get(i).getEmail());
            jo.put("mtype",Alist.get(i).getMtype());
            ja.add(jo);
         }
         return ja.toString(); 
    }
	
	@ResponseBody
    @RequestMapping(value="/viewmeminfo", produces="application/json;charset=utf-8")
    public String ViewMemInfo(HttpServletRequest hsr) {
		
		Enumeration en=hsr.getParameterNames();
		iAdmin admin = sqlSession.getMapper(iAdmin.class);
       
		while(en.hasMoreElements())
		{
			Object objOri=en.nextElement();
			String param=(String)objOri;
			String value=hsr.getParameter(param);
			System.out.println("Parameter Name is '"+param+"' and Parameter Value is '"+value+"'");
			
			if(param.equals("userid")) {
		        ArrayList<membersA> Alist=admin.getMemInfo(value);
		        System.out.println("Alist:"+Alist);

		        JSONArray ja= new JSONArray();
		         for(int i=0; i<Alist.size(); i++) { 
		            JSONObject jo=new JSONObject();
		            jo.put("name",Alist.get(i).getName());
		            jo.put("nickname",Alist.get(i).getNickname());
		            jo.put("userid",Alist.get(i).getUserid());
		            jo.put("password",Alist.get(i).getPassword());
		            jo.put("age",Alist.get(i).getAge());
		            jo.put("gender",Alist.get(i).getGender());
		            jo.put("mobile",Alist.get(i).getMobile());
		            jo.put("address",Alist.get(i).getAddress());
		            jo.put("email",Alist.get(i).getEmail());
		            ja.add(jo);
		         }
		         return ja.toString(); 
			} 
			else if(param.equals("check")) {
				String[] userid=value.split(",");
				System.out.println("userid : " + userid.length);
				
		        JSONArray ja= new JSONArray();
				for(int j=0; j<userid.length;j++) {
					System.out.println("["+userid[j]+"]");
				    ArrayList<membersA> Alist=admin.getMemInfo(userid[j]);

				    for(int i=0; i<Alist.size(); i++) { 
				    	JSONObject jo=new JSONObject();
				        jo.put("name",Alist.get(i).getName());
				        jo.put("nickname",Alist.get(i).getNickname());
				        jo.put("userid",Alist.get(i).getUserid());
				        jo.put("password",Alist.get(i).getPassword());
				        jo.put("age",Alist.get(i).getAge());
				        jo.put("gender",Alist.get(i).getGender());
				        jo.put("mobile",Alist.get(i).getMobile());
				        jo.put("address",Alist.get(i).getAddress());
				        jo.put("email",Alist.get(i).getEmail());
				        ja.add(jo);
				    }
				}
			    return ja.toString(); 
			}
		}	
		return "ok";
    }
	@ResponseBody
    @RequestMapping(value="/mtypelist", produces="application/json;charset=utf-8")
    public String MtypeList(HttpServletRequest hsr) {
       iAdmin admin = sqlSession.getMapper(iAdmin.class);
        ArrayList<membertype> Mtypelist=admin.getMtype();
        System.out.println("Mtypelist:"+Mtypelist);

        JSONArray ja= new JSONArray();
         for(int i=0; i<Mtypelist.size(); i++) { 
            JSONObject jo=new JSONObject();
            jo.put("mtype_code",Mtypelist.get(i).getMtype_code());
            jo.put("mtype",Mtypelist.get(i).getMtype());
            ja.add(jo);
         }
         return ja.toString(); 
    }
	
	@ResponseBody
	@RequestMapping(value="/memupdate", produces="application/text;charset=UTF-8")
	public String Updatemem(HttpServletRequest hsr) {

		String userid=hsr.getParameter("userid");
		int type=Integer.parseInt(hsr.getParameter("type"));

		iAdmin admin = sqlSession.getMapper(iAdmin.class);
		admin.members_update(userid,type);
		
		return "ok";
	}
	@ResponseBody
	@RequestMapping(value="/memsupdate", produces="application/text;charset=UTF-8")
	public String Updatemems(HttpServletRequest hsr) {

		String check=hsr.getParameter("check");
		String[] userid=check.split(",");
		int type=Integer.parseInt(hsr.getParameter("type"));

		iAdmin admin = sqlSession.getMapper(iAdmin.class);
		
		String str="";
		try {
			for(int i=0;i<userid.length;i++) {
				System.out.println("["+userid[i]+"]");
				admin.members_update(userid[i],type);
			}
			str="ok";
		} catch(Exception e) {
			System.out.println(e.getMessage());
			
			str="fail";
		}
		System.out.println(str);
		return str;
	}
	@ResponseBody
	@RequestMapping(value="/memdelete", produces="application/text;charset=UTF-8")
	public String Deletemem(HttpServletRequest hsr) {
		
		Enumeration en=hsr.getParameterNames();
		iAdmin admin = sqlSession.getMapper(iAdmin.class);
		
		while(en.hasMoreElements())
			{
				Object objOri=en.nextElement();
				String param=(String)objOri;
				String value=hsr.getParameter(param);
				System.out.println("Parameter Name is '"+param+"' and Parameter Value is '"+value+"'");
				
				if(param.equals("userid")) {
					admin.delete_mypage(value);
					admin.members_delete(value);
					
				} else if(param.equals("check")) {
					String[] userid=value.split(",");
					
					String str="";
					try {
						for(int i=0;i<userid.length;i++) {
							System.out.println("["+userid[i]+"]");
							admin.delete_mypage(userid[i]);
							admin.members_delete(userid[i]);
						}
						str="ok";
					} catch(Exception e) {
						System.out.println(e.getMessage());
						str="fail";
					}
					System.out.println(str);
					return str;
				}
			}	
		return "ok";
	}
	
	@RequestMapping("/buyMship")
	public String Mship(HttpServletRequest hsr, Model model) {
		session_call(hsr, model);
		return "/Member/buyMship";
	}
	@ResponseBody
    @RequestMapping(value="/Mship", produces="application/json;charset=utf-8")
    public String Mships(HttpServletRequest hsr) {
       iAdmin admin = sqlSession.getMapper(iAdmin.class);
       int code=Integer.parseInt(hsr.getParameter("code"));
       
        ArrayList<Mship> MshipList=admin.getMship(code);
        System.out.println("MshipList:"+MshipList);
        
        JSONArray ja= new JSONArray();
         for(int i=0; i<MshipList.size(); i++) { 
            JSONObject jo=new JSONObject();
            jo.put("code",MshipList.get(i).getCode());
            jo.put("month",MshipList.get(i).getMonth());
            jo.put("price",MshipList.get(i).getPrice());
            jo.put("M_code",MshipList.get(i).getM_code());
            ja.add(jo);
         }
         return ja.toString(); 
    }
	
	@RequestMapping(value="/payment", produces="application/json;charset=utf-8")
	public String Payment(HttpServletRequest hsr, Model model) {
		HttpSession session = hsr.getSession(true);
		iAdmin admin = sqlSession.getMapper(iAdmin.class);
		
		String userid=(String) session.getAttribute("userid");
		String sports_name=hsr.getParameter("sports_name");
		String start_dt=hsr.getParameter("start_dt");
		String end_dt=hsr.getParameter("end_dt");
	    admin.payment(userid,sports_name,start_dt,end_dt);
		
		return "redirect:/buyMship";
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
//	       int type=Integer.parseInt(type1);
	       model.addAttribute("userid",userid);
	       model.addAttribute("type",type1);
	       model.addAttribute("nickname",nickname);
	 }
}