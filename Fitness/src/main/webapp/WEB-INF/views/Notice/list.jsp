<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
       <!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
   <!-- Bootstrap Icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
       <!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
       <!-- SimpleLightbox plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
       <!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" />

   <!-- Bootstrap core CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<style>
 table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrapper {
	overflow:hidden;
	width: max-content;
}
#board-search .search-window .search-wrap {
  position: relative;
/*    padding-right: 124px; */
   display: inline-block;
   margin: 20px 0 20px 0;
  max-width: 700px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap select {
  height: 40px;
  width: 300px;
  align: left;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
  float: right;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
 .board-table > a:hover { 
   text-decoration: underline; 
 } 
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 5px 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
  
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}
 .bno_width{
     width: 10%;
  }
  .writer_width{
     width: 20%;
  }
  .regdate_width{
     width: 15%;
  }
  .updatedate_width{
     width: 15%;
  }


  .pageInfo{
    list-style : none;
    display: inline-block;
    margin: 0 20px 0 20px;
    width: 100%
}
.pageInfo li{
    float: left;
  font-size: 18px;
   margin-left: 10px; 
  padding: 7px;
  font-weight: 500;
}
 a:link {color:black; text-decoration: none;}
 a:visited {color:#333; text-decoration: none;}
  
 </style>
</head>
<body>
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>
<section class="notice">
  <div class="page-title">
      <div class="container" align=center>
          <h2>
          	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-chat-right-text" viewBox="0 0 16 16">
			  <path d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1H2zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/>
			  <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
			</svg>&nbsp;&nbsp;커뮤니티</h2>
      </div>
		  	<div class="search-wrap">
			   <c:if test="${nickname!='null'}">
			      <a href="/fit/enroll" style="float:right;margin-right:15%;">글 쓰기</a>
			   </c:if>
			</div>
  </div>
<div class="table_wrap" align=center>
       <!-- board seach area -->
    <div id="board-search">
        <div class="container">
            <div class="search-window">
               <div class="search-wrap" style="width:30%;">
                    <select name="type">
                      <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                      <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                      <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                      <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                      <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                      <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                      <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
                  </select>
              </div>
                <div class="search-wrap" style="width:60%;">
                    <input id="search" type="search" name="keyword" placeholder="검색어를 입력해주세요." value="${pageMaker.cri.keyword }">
                    <button class="btn btn-dark">검색</button>
                </div>
            </div>
        </div>
    </div>
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="board-table">
      <thead>
         <tr>
            <th scope="col" class="bno_width">번호</th>
            <th scope="col" class="title_width">제목</th>
            <th scope="col" class="writer_width">작성자</th>
            <th scope="col" class="regdate_width">작성일</th>
            <th scope="col" class="updatedate_width">수정일</th>
         </tr>
      </thead>
      <c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.bno}"/></td>
                <td class="move" href='<c:out value="${list.bno}"/>'>
                       <c:out value="${list.title}"/>
                </td>
                <td><c:out value="${list.writer}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updateDate}"/></td>
            </tr>
        </c:forEach>
            </table>
        </div>
    </div>

	<div id="board-search">
	    <div class="container">
	        <div class="search-window">
	        <div class="search-wrapper">
		        <div class="search-wrap">
		          <ul id="pageInfo" class="pageInfo">
		              <!-- 이전페이지 버튼 -->
		                <c:if test="${pageMaker.prev}">
		                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">이전</a></li>
		                </c:if>
		                <!-- 각 번호 페이지 버튼 -->
		                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
		                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
		                </c:forEach>
		
		                <!-- 다음페이지 버튼 -->
		                <c:if test="${pageMaker.next}">
		                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">다음</a></li>
		                </c:if>    
		            </ul>
		        </div>
	        </div>
	        </div>
	    </div>
	</div>

   <form id="moveForm" method="get">    
       <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">   
        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
        <input type="hidden" name="type" value="${pageMaker.cri.type }">
    </form>
</div>

</section>
<jsp:include page="../footer.jsp"/>
</body>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
$(document).ready(function(){
   let result = '<c:out value="${result}"/>';
   
   checkAlert(result);
   
   function checkAlert(result){
      
      if(result === ''){
         return;
      }
      
      if(result === "enrol success"){
         alert("등록이 완료되었습니다.");
      }
        if(result === "modify success"){
            alert("수정이 완료되었습니다.");
        }
        if(result === "delete success"){
            alert("삭제가 완료되었습니다.");
        }
   }   
   
});

let moveForm = $("#moveForm");

$(".move").on("click", function(e){
    e.preventDefault();
    
    moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
    moveForm.attr("action", "/fit/get");
    moveForm.submit();
});

$(".pageInfo a").on("click", function(e){
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "/fit/list");
    moveForm.submit();
    
});

$(".search-wrap input[name='keyword']").keypress(function(e){
	if(e.keyCode == 13) {
	    e.preventDefault();
	    
	    let type = $(".search-wrap select").val();
	    let keyword = $(".search-wrap input[name='keyword']").val();
	    
	    if(!type){
	        alert("검색 종류를 선택하세요.");
	        return false;
	    }
	    
	    if(!keyword){
	        alert("키워드를 입력하세요.");
	        return false;
	    }        
	    
	    moveForm.find("input[name='type']").val(type);
	    moveForm.find("input[name='keyword']").val(keyword);
	    moveForm.find("input[name='pageNum']").val(1);
	    moveForm.submit();
	  }
 })
$(".search-wrap button").on("click", function(e){
    e.preventDefault();
    
    let type = $(".search-wrap select").val();
    let keyword = $(".search-wrap input[name='keyword']").val();
    
    if(!type){
        alert("검색 종류를 선택하세요.");
        return false;
    }
    
    if(!keyword){
        alert("키워드를 입력하세요.");
        return false;
    }        
    
    moveForm.find("input[name='type']").val(type);
    moveForm.find("input[name='keyword']").val(keyword);
    moveForm.find("input[name='pageNum']").val(1);
    moveForm.submit();
});

</script>
</html>