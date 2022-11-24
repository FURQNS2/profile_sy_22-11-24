<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** SY Profile</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyper.css">
</head>
<body>
<!-- 헤더 시작 -->
	<%@ include file="include/header.jsp" %>
<!-- 헤더 끝-->
	
<!-- 프로필 사진 시작 -->
	<table width="75%" border="0" cellspcing="0" cellpadding="10" >
		<tr>
			<td class="titlebox">
				<span class="title01">DEVELOPER SY PROFILE</span>
			</td>
		</tr>
			
		<tr>
			<td class="titlebox"> 
				<span class="title02">I'm SY, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		
		<tr>
			<td>				
				<table width="70%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							안녕하세요. 백엔드 개발자 SY입니다. <br><br>
							보고계신 페이지는 Spring Boot Framework로 개발되었습니다.<br><br>
							궁금하신 점은 
							질문자게시판							
							을 이용해주세요. 														
						</td>
					</tr>					
				</table>				
			</td>
		</tr>
	</table>
<!-- 프로필 사진 끝 -->

<!-- 푸터 시작 -->
	<%@ include file="include/footer.jsp" %>
<!-- 푸터 끝-->	
	
</body>
</html>