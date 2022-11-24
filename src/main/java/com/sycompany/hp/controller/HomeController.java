package com.sycompany.hp.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sycompany.hp.dao.IDao;
import com.sycompany.hp.dto.MemberDto;

@Controller
public class HomeController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/")
	public String home() {
		return "redirect:index";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/profile")
	public String profile() {
		
		return "profile";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		
		return "contact";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value =  "/loginok", method = RequestMethod.POST)
	public String loginok(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		// 가입하려는 id 존재 시 1을 반환해줌
		int checkIdFlag = dao.checkId(mid);  
		
		if(checkIdFlag == 0) {
			model.addAttribute("checkIdFlag",checkIdFlag);
		} else {
			model.addAttribute("checkIdFlag",checkIdFlag);
		}
		
		return "loginok";
	}
	
	@RequestMapping("/join")
	public String join() {
		
		return "join";
	}
	
	@RequestMapping(value =  "/joinok", method = RequestMethod.POST)
	public String joinok(Model model,HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		int joinFlag = dao.memberJoin(mid, mpw, mname, memail);
		
		
		if(joinFlag == 1) { // 회원가입 성공 시 1을 돌려줌
			session.setAttribute("memberId", mid);
			session.setAttribute("memberName", mname);
			
			model.addAttribute("mid",mid);
			model.addAttribute("mname",mname);
		
			return "joinok";
			
		} else {
//			PrintWriter out;
//			try {
//				response.setContentType("text/html;charset=utf-8");
//				out = response.getWriter();
//				out.println("<script>alert('이미 있는 아이디 입니다.');</script>");
//				out.flush();
//			}catch(Exception e) {
//				e.printStackTrace();
//			}			
			return "joinFail";
		}
				
		
		
	}
	
	@RequestMapping("/joinFail")
	public String joinFail() {
		
		return "joinFail";
	}
	
	@RequestMapping("/question")
	public String question() {
		
		return "question";
	}
	
	@RequestMapping(value =  "/questionok", method = RequestMethod.POST)
	public String questionok() {
		
		return "redirect:list";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:login";
	}
	
}
