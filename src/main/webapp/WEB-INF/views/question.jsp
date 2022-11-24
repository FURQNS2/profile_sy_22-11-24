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
				<table width="70%" border="0" cellspcing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<table width="70%" border="0" cellspcing="0" cellpadding="10">
								<form action="questionok" method="post">
									<tr>
										<td><span class="content_text01">ID</span></td>
										<td><input class="input_type01" type="text" name="qid"></td>
									</tr>
									<tr>
										<td><span class="content_text01">NAME</span></td>
										<td><input class="input_type01" type="text" name="qname"></td>
									</tr>
									<tr>
										<td><span class="content_text01">QUESTION</span></td>
										<td><input class="input_type01" type="text" name="qquestion"></td>
									</tr>									
									<tr>
										<td><span class="content_text01">E-MAIL</span></td>
										<td>
											<textarea class="textarea_type01" rows="5" cols="50" name="gcontent"></textarea>
										</td>
									</tr>
										<td colspan="2">
											<input class="button_type01" type="submit" value="질문하기">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="글목록" onclick="javascrip:window.location='list'">
										</td>
									</tr>
								</form>
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