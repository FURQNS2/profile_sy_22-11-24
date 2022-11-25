package com.sycompany.hp.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

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
import com.sycompany.hp.dto.QBoardDto;

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
	public String loginok(HttpServletRequest request, Model model, HttpServletResponse response, HttpSession session) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		// 있는 아이디면 1 반환
		int checkIdFlag = dao.checkId(mid);
		// 아이디와 비밀번호 모두 일치하면 1 반환
		int checkIdPwFlag = dao.checkIdAndPw(mid, mpw);
		
		PrintWriter out;
		
		if(checkIdFlag == 0) { //없는 아이디
			
				try {
					response.setContentType("text/html;charset=utf-8");
					out = response.getWriter();
					out.println("<script>alert('없는 아이디 입니다.');</script>");
					out.flush();

				}catch(Exception e) {
								e.printStackTrace();
				}		
			
				return "login";
			
		} else {
			if(checkIdPwFlag == 0) {				
				
				try {
					response.setContentType("text/html;charset=utf-8");
					out = response.getWriter();
					out.println("<script>alert('비밀번호가 다릅니다.');</script>");
					out.flush();
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				return "login";
				
			}else {
				
				session.setAttribute("memberId", mid);
				MemberDto memberDto = dao.getMemberInfo(mid);
				
				
				model.addAttribute("checkIdFlag",checkIdFlag);
				model.addAttribute("checkIdPwFlag",checkIdPwFlag);
				model.addAttribute("mid", mid);
				model.addAttribute("memberDto",memberDto);
			
				
				
			}
		
			return "loginok";
		}
		
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
		
		
		model.addAttribute("joinFlag",joinFlag);
		
		if(joinFlag == 0) { // 회원가입 성공 시 1을 돌려줌
			
			return "joinFail";
			
		} else { // 회원가입 성공 시 1을 돌려줌
			
			session.setAttribute("memberId", mid);
			session.setAttribute("memberName", mname);
			
			model.addAttribute("mid",mid);
			model.addAttribute("mname",mname);
			
			return "joinok";
			
		}
	}
	
	@RequestMapping("/joinFail")
	public String joinFail() {
		
		return "joinFail";
	}
	
	@RequestMapping("/question")
	public String question(HttpSession session, Model model) {
		
		String sessionId = (String ) session.getAttribute("memberId");
		
		if(sessionId == null) {
			model.addAttribute("memberId","GUEST");
		} else {
			model.addAttribute("memberId",sessionId);
		}
		
		
		return "question";
	}
	
	@RequestMapping(value =  "/questionok", method = RequestMethod.POST)
	public String questionok(HttpServletRequest request, Model model) {
		
		String qid = request.getParameter("qid");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeQuestion(qid, qname, qcontent, qemail);
		
		return "redirect:questionlist";
	}
	
	@RequestMapping("/questionlist")
	public String questionlist(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		List<QBoardDto> qboardDtos = dao.questionList();
		
		model.addAttribute("qdtos", qboardDtos);
		
		return "questionlist";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:login";
	}
	
	
	@RequestMapping("/memberModify")
	public String memberModify(HttpSession session, HttpServletRequest request, Model model) {
			
		IDao dao = sqlSession.getMapper(IDao.class);
		//로그인된 아이디 가져오기(헤더에 저장된 아이디 가져오기)
		String memberId	= session.getAttribute("memberId").toString();
		
		MemberDto memberDto = dao.getMemberInfo(memberId);
		
		model.addAttribute("memberDto", memberDto);
		
		
		return "memberModify";
	}
	
	
	@RequestMapping("/memberModifyok")
	public String memberModifyok(HttpSession session, Model model, HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		// 업데이트하려는 내용 request로 가져오기
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		dao.memberModify(mid, mpw, mname, memail);
		
		
		// 업데이트 된 값을 다시 불러오기				
		
		MemberDto memberDto = dao.getMemberInfo(mid);		
		model.addAttribute("memberDto", memberDto);
		
		return "memberModifyok";
	}
	
	@RequestMapping("/questionView")
	public String questionView(Model model, HttpServletRequest request, HttpSession session) {
		
		//파라미터 안에 있는 게시글 번호 가져오기
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		QBoardDto qBoardDto = dao.questionView(qnum);
		
		model.addAttribute("qdto",qBoardDto);
		model.addAttribute("qid",qBoardDto.getQid());
		
		return "questionView";
	}
	
	@RequestMapping(value = "/questionmodify", method = RequestMethod.POST)
	public String questionmodify(Model model, HttpServletRequest request, HttpSession session) {
		
		//파라미터 안에 있는 게시글 번호 가져오기		
		String qnum = request.getParameter("qnum");
				
		IDao dao = sqlSession.getMapper(IDao.class);
				
		QBoardDto qBoardDto = dao.questionView(qnum);
				
		model.addAttribute("qdto",qBoardDto);
		
		return "questionmodify";
	}
	
	@RequestMapping(value = "/questionmodifyok", method = RequestMethod.POST)
	public String questionmodifyok(Model model, HttpServletRequest request, HttpSession session) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String qnum = request.getParameter("qnum");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		dao.questionModify(qnum, qname, qcontent, qemail);
		
		return "redirect:questionlist";
	}
	
	
	
	
	@RequestMapping("/questionDelet")
	public String questionDelet(HttpServletRequest request) {
		
		//파라미터 안에 있는 게시글 번호 가져오기
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.questionDelete(qnum);		
		
		return "redirect:questionlist";
	}
}
