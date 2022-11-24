<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** SY Profile</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyper.css">
</head>
<body>
<!-- 헤더 시작 -->
	<%@ include file="include/header.jsp" %>
<!-- 헤더 끝-->
	
<!-- 프로필 사진 시작 -->
	<table width="75%" border="0" cellspacing="0" cellpadding="10" >
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
					<tr>
						<td>
							<tr>
								<td class="skillbox">
									<span class="title03">J</span><span class="title04">AVA</span>
								</td>
								<td rowspan="6" class="picbox">
									<img src="${pageContext.request.contextPath}/resources/img/indeximage.jpg">
								</td>
							</tr>
							<tr>
								<td class="skillbox"><span class="title03">J</span><span class="title04">SP</span></td>								
							</tr>
							<tr>
								<td class="skillbox"><span class="title03">S</span><span class="title04">PRINGBOOT</span></td>								
							</tr>
							<tr>
								<td class="skillbox"><span class="title03">J</span><span class="title04">AVASCRIPT</span></td>								
							</tr>
							<tr>
								<td class="skillbox"><span class="title03">H</span><span class="title04">TML5</span></td>								
							</tr>
							<tr>
								<td class="skillbox"><span class="title03">D</span><span class="title04">ATABASE</span></td>								
							</tr>						
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