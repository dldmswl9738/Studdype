<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" 
      xmlns:svg="http://www.w3.org/2000/svg">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Meet Search List Page</title>

<!-- owl.carousel오류로 인해 최상단에 script 추가해야 함 -->
<script src="./resources/assets/js/jquery.3.2.1.min.js"></script>
<script src="./resources/assets/js/owl.carousel.min.js"></script>

<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resources/assets/css/modal-video.min.css">
<link rel="stylesheet" href="./resources/assets/css/animate.css">
<link rel="stylesheet" href="./resources/assets/css/normalize.css">
<link rel="stylesheet" href="./resources/css/mainstyle.css">
<link rel="stylesheet" href="./resources/assets/css/responsive.css">

<!-- commond css -->
<link rel="stylesheet" href="./resources/css/community/header&footer.css">
<link rel="stylesheet" href="./resources/css/community/leftnavi.css">
<link rel="stylesheet" href="./resources/css/community/mainsection.css">

<!-- meetboard css -->
<link rel="stylesheet" href="./resources/css/community/meet.css">

<!-- searchBox font -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet">


<script type="text/javascript">
<!-- 페이징 --> 
// 페이지 이동 
function movePage(pagenum){
	$("#pagenum").val(pagenum.text);
	var pageform = document.getElementById('pageform');
	pageform.submit();
}

// 다음 페이지그룹 
function nextPageGroup(){
	if( ${endPage < totalPageNum}){
		$("#pagenum").val(${endPage+1});
		var pageform = document.getElementById('pageform');
		pageform.submit();
	};
}

// 이전 페이지 그룹 
function prePageGroup(){
	if( ${startPage - 1 > 0}){
		$("#pagenum").val(${startPage-1});
		var pageform = document.getElementById('pageform');
		pageform.submit();
	};
}

$("#nothingMeet.val(${keyword})").css("color","red");

</script>
</head>
<body>

	<jsp:include page="../../commond/communityHeader.jsp"></jsp:include>
	<jsp:include page="../../commond/communityLeftNavi.jsp"></jsp:include>
	
     <!--main content 섹션-->
     <div class="main-section">
        
       	<!-- 검색 창 -->
       	<div id="bigBox">
	       	<div class="divBox" tooltip="검색어를 입력한후 Enter 버튼을 눌러주세요!"  tooltip-persistent>
        		
        		<!-- 검색 폼 -->
        		<form action="meetsearchlist.do" method="post" name="meetSearchForm" role="from">
			       	<div class="searchDiv" >
					    <svg xmlns="http://www.w3.org/2000/svg" width="355.5" height="87.99">
					        <path class="right" fill="none" stroke="#6434ef" stroke-width="4" stroke-miterlimit="10" d="M177.75 85.99h133.5c23.334 0 42.25-18.916 42.25-42.25C352.944 20.528 333.967 2 310.748 2H177.75"/>
					        <path class="left" fill="none" stroke="#6434ef" stroke-width="4" stroke-miterlimit="10" d="M177.75 85.99H44.25C20.916 85.99 2 67.074 2 43.74 2.556 20.528 21.533 2 44.752 2H177.75"/>
					    </svg>
			   			<p></p>
			    		<input type="text" id="keyword" name="keyword" autocomplete="off"/>
			    		<span >Search</span>
					</div>
				</form>
				<!-- ---------------------------------- -->
				
			</div>
	       	
       	</div>
       	
       	<!-- meetList -->
       	<!-- jstl:fmt = 날짜를 String값으로 받아서 Date형으로 parse 해준 뒤 화면에 뿌릴 때에는 다시 String 형으로 format -->
		<c:choose>
			<c:when test="${empty list}">
				<div id ="nothingImg"><img src="./resources/assets/img/searchNothing_keyword.png"></div>
				<div id="nothingMeet"> 
					<span id="nothingKeyword">' ${ keyword } '</span> 에 대한 검색 결과가 없습니다.
					<p id="nothingTXT">모든 단어의 철자가 올바른지 확인하거나<br>다른 키워드로 검색해보세요!</p>
				</div>
			</c:when>
			 <c:otherwise>
				<c:forEach var ="i" begin="0" end="${list.size()-1 }" step="1">
			        <table id="meetList" onclick="location.href='meetdetail.do?meetno=${list.get(i).getMeet_no() }'">
						<tr>
							<td id="date"> <fmt:formatDate value="${list.get(i).getMeet_regdate()}" pattern="yyyy.MM.dd"/> </td>
							<td id="location"><img src="./resources/assets/img/profile_placeholder.png">${ list.get(i).getMeet_addr() }&nbsp;${ list.get(i).getMeet_addr_detail() }</td>
						</tr>
						<tr>
							<td id="title" colspan="2">${ list.get(i).getMeet_title() }</td>
						</tr>
						<tr>
							<td id="writer">${memberMap.get( list.get(i).getMeet_no()).getMem_id() }</td>
							<td id="recruitment">모집기간 <fmt:setLocale value="en_US" scope="session"/>
														<fmt:parseDate value='${ list.get(i).getVote_startdate() }' var='vote_startdate' pattern="yyyy-MM-dd HH:mm:ss"/>
														<fmt:formatDate value="${ vote_startdate }" pattern="yyyy.MM.dd"/> ~ 
														<fmt:parseDate value='${ list.get(i).getVote_enddate() }' var='vote_enddate' pattern="yyyy-MM-dd HH:mm:ss"/>
														<fmt:formatDate value="${ vote_enddate }" pattern="yyyy.MM.dd"/>
							</td>
						</tr>
					</table>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<!-- ---------------------------------- -->
		
		<!-- 모임등록 버튼 -->
		<button class="submitBtn" id="listBtn_insertform" onclick="location.href='meetinsertform.do'">모임 등록</button>   
       	<!-- ---------------------------------- -->
		
		<!-- 페이징 -->
		<div class="pagin_div">
			<ul class="pagin">
				<li class="page_li"><a class="next_page" onclick="prePageGroup();"><</a></li>
			
				<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1"	varStatus="status">
					<c:choose>
						<c:when test="${currentPage == startPage + status.count -1 }">
							<li class="page_li li_hober"><a class="page_a current_page"
								onclick="movePage(this);">${startPage + status.count -1 }</a></li>
						</c:when>
						<c:otherwise>
							<li class="page_li li_hober"><a class="page_a"	onclick="movePage(this);">${startPage + status.count -1 }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<li class="page_li"><a class="next_page"
					onclick="nextPageGroup();">></a></li>
			</ul>
			
			<!-- 페이징 폼 -->
			<form action="meetsearchlist.do" method="post" id="pageform" name="pageform">
				<input type="hidden" name="keyword" id="keyword" value="${keyword }">
				<input type="hidden" name="pagenum" id="pagenum">
			</form>
			<!-- ---------------------------------- -->
			
		</div>
    </div>
   
    
<jsp:include page="../../commond/commondFooter.jsp"></jsp:include>

<!-- search Box script -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js'></script>
<script src="./resources/assets/js/searchScript.js"></script>

<script src="./resources/assets/js/popper.min.js"></script>
<script src="./resources/assets/js/bootstrap.min.js"></script>
<script src="./resources/assets/js/modal-video.js"></script>
<script src="./resources/assets/js/loadmore.js"></script>
<script src="./resources/assets/js/prefixfree.min.js"></script>
<script src="./resources/assets/js/main.js"></script>
</body>
</html>