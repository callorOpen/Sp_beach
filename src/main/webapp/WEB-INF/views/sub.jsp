<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/include/include-head.jspf" %>
</head>
<body>
	<header>
		<button id="btn_home">해수욕장 정보</button>
	</header>
	<section>
	<div id="main_btn_wrapper">
		<button class="main_btn" id="btn_gg">경기도</button>
		<button class="main_btn" id="btn_cc">충청도</button>
		<button class="main_btn" id="btn_gw">강원도</button>
		<button class="main_btn" id="btn_gs">경상도</button>
		<button class="main_btn" id="btn_cr">전라도</button>
		<button class="main_btn" id="btn_jj">제주도</button>
	</div>
	<div id="sub_btn_wrapper">
		<c:forEach var="vo" items="${BLIST}">
			<button class="sub_btn" id="${vo.b_name}" data-beach-id="${vo.id}">${vo.b_name}</button>
		</c:forEach>
	</div>
	</section>
</body>
</html>