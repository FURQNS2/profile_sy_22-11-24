<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** SY Profile</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">
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
				<table width="70%" border="0" cellspcing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<table width="70%" border="0" cellspcing="0" cellpadding="10">
								
									<tr>
										<th colspan="2"><회원 정보 수정 완료></th>										
									</tr>
									<tr>
										<td><span class="content_text01">MEMBER ID</span></td>
										<td><input class="input_type01" type="text" value="${memberDto.mid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">MEMBER PW</span></td>
										<td><input class="input_type01" type="password" value="${memberDto.mpw }" readonly="readonly"></td>
									</tr>									
									<tr>
										<td><span class="content_text01">NAME</span></td>
										<td><input class="input_type01" type="text" value="${memberDto.mname }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01">E-MAIL</span></td>
										<td><input class="input_type01" type="text" value="${memberDto.memail }" readonly="readonly"></td>
									</tr>
										<td colspan="2">
											<br>
											<input class="button_type01" type="button" value="재수정" onclick="javascrip:window.location='memberModify?mid=${memberDto.mid }'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="HOME" onclick="javascrip:window.location='index'">
										</td>
									</tr>
								
							</table>													
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