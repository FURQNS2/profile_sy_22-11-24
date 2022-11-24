<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyper.css">
</head>
<body>

	<% 
		String sessionId = (String)session.getAttribute("memberId");
		//로그인 중이라면 로그인한 아이디가 저장되고 비로그인 중이면 sessionId==null이다.	
	%>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="headline01">
			<td width="65%" class="menu01">&nbsp;</td>
			<td width="5%" class="menu01">
				<a href="index">HOME</a>
			</td>
			
			
			<!-- 로그인 여부 시작-->
			<% if(sessionId == null){ %>			
			<td width="5%" class="menu01">
				<a href="login">LOGIN</a>
			</td>			
			<% }else{ %>
			<td width="5%" class="menu01">
				<a href="logout">LOGOUT</a>
			</td>
			<%} %>
						
			<% if(sessionId == null){ %>
			<td width="5%" class="menu01">
				<a href="join">JOIN</a>
			</td>
			<% }else{ %>
			<td width="5%" class="menu01">
				<a href="member_modify">MODIFY</a>
			</td>
			<%} %>
			<!-- 로그인 여부 끝 -->
			
			<td width="6%" class="menu01">
				<a href="profile">PROFILE</a>
			</td>
			<td width="7%" class="menu01">
				<a href="question">QUESTION</a>
			</td>
			<td width="6%" class="menu01">
				<a href="contact">CONTACT</a>
			</td>
			
			<td width="2%">&nbsp;</td>
		</tr>
		<tr class="headline02">
			<td colspan="7">&nbsp;</td>
		</tr>
	</table>
</body>
</html>