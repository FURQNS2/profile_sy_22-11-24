package com.sycompany.hp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {

	private String mid; //가입아이디
	private String mpw; //가입비번
	private String mname; // 가입 이름
	private String memail; // 가입 이메일
	private String mdate; //가입일
}
