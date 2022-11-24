package com.sycompany.hp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.sycompany.hp.dto.MemberDto;

@Mapper
public interface IDao {

	//회원가입 1이면 성공, 0이면 실패
	public int memberJoin(String mid, String mpw, String mname, String memail); 
	//아이디 존재여부 확인 
	public int checkId(String mid);
	
	
}
