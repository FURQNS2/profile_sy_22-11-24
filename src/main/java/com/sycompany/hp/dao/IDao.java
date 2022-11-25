package com.sycompany.hp.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.sycompany.hp.dto.MemberDto;
import com.sycompany.hp.dto.QBoardDto;

@Mapper
public interface IDao {

	//회원가입 1이면 성공, 0이면 실패
	public int memberJoin(String mid, String mpw, String mname, String memail); 
	//아이디 존재여부 확인 
	public int checkId(String mid);
	// 아이디와 비밀번호가 일치하는지 확인
	public int checkIdAndPw(String mid, String mpw);
	//회원관리
	public MemberDto getMemberInfo(String mid);
	//회원정보 수정
	public void memberModify(String mid, String mpw, String mname, String memail);
	//질문게시판에 질문 올리기
	public void writeQuestion(String qid, String qname, String qcontent, String qemail);
	//질문게시판 목록
	public List<QBoardDto> questionList();
	//게시판 글 중 하나 보기
	public QBoardDto questionView(String qnum);
	//게시글 수정
	public void questionModify(String qnum, String qname, String qcontent, String qemail);
	//게시판 글 삭제
	public void questionDelete(String qnum);
	
}
