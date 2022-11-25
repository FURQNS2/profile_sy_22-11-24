<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** SY Profile</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/title.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hyper.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
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
							<table width="90%" border="0" cellspacing="0" cellpadding="10">
								
									<tr>
										<td class="content">
										<br><br>										
											<table width="80%" border="0" cellspacing="0" cellpadding="10">
												<tr>
													<th class="board_title">No.</th>
													<th class="board_title">ID</th>
													<th class="board_title" width="50%">Question</th>
													<th class="board_title">
													Writer</th>
													<th class="board_title" width="25%">Date</th>													
												</tr>
												<c:forEach items="${qdtos }" var="dto">
													<tr>
														<td class="board_content">${dto.qnum }</td>
														<td class="board_content">${dto.qid }</td>
														
														<td class="board_content02">
															<a href="questionView?qnum=${dto.qnum }">																	
																<c:choose>																
																	<c:when test="${fn:length(dto.qcontent) > 12}">																		
																		<c:out value="${fn:substring(dto.qcontent, 0, 11) }"></c:out>...																																
																	</c:when>																		
																	<c:otherwise>
																		<c:out value="${dto.qcontent }"></c:out>
																	</c:otherwise>													
																</c:choose>																
															</a>	
														</td>
														<td class="board_content">${dto.qname }</td>
														
														<td class="board_content">
															<c:out value="${fn:substring(dto.qdate,0,10)}"></c:out>														
														</td>										
													</tr>
												</c:forEach>
												<tr>
													<td colspan="5" align="right">											
														<input class="button_type01" type="button" value="질문하기" onclick="scrip:window.location='question'">
													</td>
												</tr>	
											</table>
										    <br>
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