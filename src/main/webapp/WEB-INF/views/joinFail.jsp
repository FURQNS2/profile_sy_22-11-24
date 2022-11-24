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
							로그인에 실패하셨습니다.<br>
							<input type="button" value="회원가입 바로가기" onclick="script:window.location='history.go(-1);'">														
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