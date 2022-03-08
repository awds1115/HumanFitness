package com.human.fit;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class RegisterController {
	
		@Autowired
		private SqlSession sqlSession;

		@RequestMapping
		("/signon")
		public String signon() {
			return "Login/register";
		}
		

		@RequestMapping
		(value = "/register", method = RequestMethod.POST, produces = "apllication/json;charset=utf-8")
		public String signup(HttpServletRequest hsr) { /* insert */	
			iRegeister Member = sqlSession.getMapper(iRegeister.class);
			String userid = hsr.getParameter("userid");
			String password = hsr.getParameter("password");
			String nickname = hsr.getParameter("nickname");
			String human_id = hsr.getParameter("human_id");
			int age = Integer.parseInt(hsr.getParameter("age"));
			String name = hsr.getParameter("name");
		    int type = Integer.parseInt(hsr.getParameter("number"));
			String gender = hsr.getParameter("gender");
			String mobile = hsr.getParameter("mobile");
			String address = hsr.getParameter("address");
			String email = hsr.getParameter("email");
			int question = Integer.parseInt(hsr.getParameter("question"));
			String answer = hsr.getParameter("answer");
			System.out.print(userid +','+ password +','+ nickname +','+ human_id +','+ age
					+','+name+','+type+','+gender+','+mobile+','+address+','+email+
					','+question+','+answer);
			Member.insertMember(userid,password,nickname,human_id,age
					,name,type,gender,mobile,address,email,question,answer);
			
			iRegeister bmi = sqlSession.getMapper(iRegeister.class);
			String user = hsr.getParameter("userid");
			bmi.insertbmi(user);
			return "Login/login";
			
		}
		
		@ResponseBody
		@RequestMapping(value = "/questionList",method=RequestMethod.GET, produces = "application/json;charset=UTF-8")
		public String questionList() {
			iRegeister quest = sqlSession.getMapper(iRegeister.class);
			ArrayList<Register> TypeList = quest.question();

			JSONArray ja = new JSONArray(); // JSONArray 선언,임포트 (jsp에서 쓴 json을 사용할때 필요)
			for (int i = 0; i < TypeList.size(); i++) { // ArrayList -> JSON
				JSONObject jo = new JSONObject(); // JSONObject 선언,임포트 "
				jo.put("q_code", TypeList.get(i).getQ_code());
				jo.put("q_type", TypeList.get(i).getQ_type());
				ja.add(jo);
			}
			return ja.toString();
		}	
		
	@ResponseBody
	@RequestMapping(value = "/id_check", method = RequestMethod.POST, produces = "apllication/json;charset=utf-8")
	public String id_check(HttpServletRequest hsr) {
		iRegeister member = sqlSession.getMapper(iRegeister.class);

		Register id = member.id_check(hsr.getParameter("userid"));

		if (id != null) {
			return "fail";
		}

		return "ok";
	}


@ResponseBody
@RequestMapping(value = "/nickname_check", method = RequestMethod.POST, produces = "apllication/json;charset=utf-8")
public String nickname_check(HttpServletRequest hsr) {
	iRegeister member = sqlSession.getMapper(iRegeister.class);

	Register nickname = member.nickname_check(hsr.getParameter("nickname"));

	if (nickname != null) {
		return "fail";
	}

	return "ok";
	}
@RequestMapping("/login")
public String login() {
	return "/Login/login";
}
@RequestMapping("/okid")
public String okid() {
	
	return "/Login/okid";
}
@RequestMapping("/findpw")
public String pw() {
	return "/Login/findpassword";
}

/*로그인 유효성*/
@ResponseBody
@RequestMapping(value = "/login_check", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
public String login_check(HttpServletRequest hsr, Model model) {
	HttpSession session = hsr.getSession(true);
	iRegeister member = sqlSession.getMapper(iRegeister.class);

	String userid = hsr.getParameter("userid");
	String password = hsr.getParameter("password");

	Register mem = member.getMember(userid);

	if (mem.getPassword().equals(password)) {
		
		System.out.println(userid + mem.getPassword());
		
		session.setAttribute("userid", userid);
		session.setAttribute("nickname", mem.getNickname());
		session.setAttribute("number", mem.getType());
		member.getMember(userid);
	} else {
		return "fail";
	}
	return "ok";
}

@RequestMapping(value = "/logout ", method = RequestMethod.GET)
public String logout(HttpServletRequest hsr) {
	HttpSession session = hsr.getSession();
	iRegeister member = sqlSession.getMapper(iRegeister.class);
	
	member.getMember(session.getAttribute("userid").toString());
	session.invalidate();	
	
	return "home";
}

@RequestMapping("/ifind")
public String find() {
	return "Login/findId";
}

//findIdCheck쪽에서 이메일과 이름이 맞으면 아이디를 가져온다 
@ResponseBody
@RequestMapping(value = "/findId",method=RequestMethod.POST, produces = "application/json;charset=UTF-8")
public String findid(HttpServletRequest hsr) {
		iRegeister findid = sqlSession.getMapper(iRegeister.class);
		String email = hsr.getParameter("email");
		
		ArrayList<Register> TypeList = findid.findId(email);
		JSONArray ja = new JSONArray(); // JSONArray 선언,임포트 (jsp에서 쓴 json을 사용할때 필요)
		
		for (int i = 0; i < TypeList.size(); i++) { // ArrayList -> JSON;
			JSONObject jo = new JSONObject(); // JSONObject 선언,임포트 "
			jo.put("userid", TypeList.get(i).getUserid());
			ja.add(jo);
		}
		return ja.toString();
}

//아래쪽은 아이디를 찾기전에 셀렉트문(members)를 가져 옴으로써 이메일과 이름이 맞는지 알기 위함
@ResponseBody
@RequestMapping(value = "/findIdcheck",method=RequestMethod.POST, produces = "application/json;charset=UTF-8")
public String find(HttpServletRequest hsr,Model m) {
		iRegeister findid = sqlSession.getMapper(iRegeister.class);
		
		ArrayList<Register> TypeList = findid.getfindid();
		JSONArray ja = new JSONArray(); // JSONArray 선언,임포트 (jsp에서 쓴 json을 사용할때 필요)
		
		for (int i = 0; i < TypeList.size(); i++) { // ArrayList -> JSON;
			JSONObject jo = new JSONObject(); // JSONObject 선언,임포트 "
			jo.put("email", TypeList.get(i).getEmail());
			jo.put("name", TypeList.get(i).getName());
			ja.add(jo); 
			System.out.println(TypeList.get(i).getUserid());
		}
		return ja.toString();
}

@ResponseBody
@RequestMapping(value = "/findpassword",method=RequestMethod.POST, produces = "application/json;charset=UTF-8")
public String pwcheck(HttpServletRequest hsr) {
	iRegeister find = sqlSession.getMapper(iRegeister.class);
	String userid = hsr.getParameter("userid");
	ArrayList<Register> TypeList = find.findPassword(userid);

	JSONArray ja = new JSONArray();
	
	for (int i = 0; i < TypeList.size(); i++) { // ArrayList -> JSON
		JSONObject jo = new JSONObject(); // JSONObject 선언,임포트 "
		jo.put("password", TypeList.get(i).getPassword());
		ja.add(jo);
		System.out.println(TypeList.get(i).getPassword());
	}
	return ja.toString();
}

/*비밀번호 유효성 모든 유저의 질답을 가져온다. 만약 통과하면 password를 가져온다!*/
@ResponseBody
@RequestMapping(value = "/findPasswordcheck",method=RequestMethod.POST, produces = "application/json;charset=UTF-8")
public String findpassword() {
	iRegeister findpw = sqlSession.getMapper(iRegeister.class);
	ArrayList<Register> TypeList = findpw.getfindPassword();

	JSONArray ja = new JSONArray(); // JSONArray 선언,임포트 (jsp에서 쓴 json을 사용할때 필요)
	for (int i = 0; i < TypeList.size(); i++) { // ArrayList -> JSON
		JSONObject jo = new JSONObject(); // JSONObject 선언,임포트 "
		jo.put("userid", TypeList.get(i).getUserid());
		jo.put("question", TypeList.get(i).getQ_type());
		jo.put("answer", TypeList.get(i).getAnswer());
		jo.put("q_code",TypeList.get(i).getQuestion());
		ja.add(jo);
		System.out.println(TypeList.get(i).getQuestion());
		
	}
	
	return ja.toString();
}


@ResponseBody
@RequestMapping(value = "/questlist",method=RequestMethod.POST, produces = "application/json;charset=UTF-8")
public String getRoomList1(Model m) {
	iRegeister quest = sqlSession.getMapper(iRegeister.class);
	ArrayList<Register> TypeList = quest.question();
	;
	JSONArray ja = new JSONArray(); // JSONArray 선언,임포트 (jsp에서 쓴 json을 사용할때 필요)
	for (int i = 0; i < TypeList.size(); i++) { // ArrayList -> JSON
		JSONObject jo = new JSONObject(); // JSONObject 선언,임포트 "
		jo.put("q_code", TypeList.get(i).getQ_code());
		jo.put("q_type", TypeList.get(i).getQ_type());
		ja.add(jo);
		System.out.println((TypeList.get(i).getQ_type()+','+TypeList.get(i).getQ_code()));
	}
	return ja.toString();
}	

}