<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<!DOCTYPE html>
<html lang="ko">
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta charset="UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Insert title here</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
<link rel="icon" type="image/x-icon" href="resources/assets1/favicon.ico" />
<!-- Simple line icons-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css"/>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
    </head>
<style>
.container{
padding: 0 100px;
}
textarea{
	width: 1100px;
    font-size: 15px; 
    resize: none;
    background-color: white;
}
form-control:disabled, .form-control[readonly] {
    background-color: #fafafa;
    opacity: 1;
}
.wdate{
	padding-left: 2.25rem;
    padding-bottom: 1rem;`
    color: #BDBDBD;
     font-size: 0.75rem; 
    width:3%;
}
.wbtn{
	padding-left: 2.25rem;
    padding-bottom: 1rem;
    color: #BDBDBD;
     font-size: 0.75rem; 
    width:20%;
}
.rp_parent{
	margin-left: -30px;
}
.content,
.writer{
	padding-left: 2.25rem;
}
.icon_p{
  padding-bottom: 4rem;
}
.icon_p2{
   margin-left: 30px;
  padding-bottom: 4rem;
}
a{ text-decoration:none;} 
a:hover { 
text-decoration:none;
color: #BDBDBD;
 }
#p_content{
     font-size: 15px; 
    padding: 10px;
    margin-right:1%;
}
////////////

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/* 	padding-right: 124px; */
	display: block;
	margin: 20px 0 20px 0;
	float:right;
}
#board-search .search-window .search-wrapper {
	overflow:hidden;
	padding:0 1.3rem;
}
#board-search .search-window .search-wrap input {
  height: 40px;
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
  width: 108px;
  padding: 0;
  font-size: 16px;
  height:40px;
  margin-bottom:1px;
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
  float:right;
  
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
#list_btn,#modify_btn,#delete_btn,#p_insert_btn,#cancel_btn {
	border-radius: 5px;
	text-align:center;
	vertical-align:middle;
	border:1px solid #999;
	border-radius:0;
	padding-left: 19.5%;
}



</style>
    <body>
     <section class="page-section bg-dark text-white">
		<jsp:include page="../header.jsp"/>
	</section>
        <div class="container">
           
            <div class="row" align=center>
           
                <div align=center>
                  <hr/>
                  <form id="modifyForm" action="/fit/modify" method="post">
                    <table class="table table-condensed">
                    
                        <thead>
                            <tr align="center">
                                <th width="10%">제목</th>
                                <th width="60%">
                                <textarea class="form-control" style="resize: none;" rows="1" name="content"><c:out value="${pageInfo.title}"/></textarea></th>
                                
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>작성일
                                </td>
                                <td>
                                <fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>
                                </td>
                            </tr>
                             <tr>
                                <td>수정일
                                </td>
                                <td>
                                <fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>글쓴이
                                </td>
                                <td>
                                <c:out value="${pageInfo.writer}"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                <input type=hidden name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
                                 <input type=hidden name="title" value='<c:out value="${pageInfo.title}"/>' >
                                 <textarea rows="3" class="form-control" name="content" style="resize: none; height: 400px;"><c:out value="${pageInfo.content}"/></textarea>
                                 <input type=hidden name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
                                 <input type=hidden name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
                                 <input type=hidden name="updateDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>' >
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table id="commentTable" class="table table-condensed"></table>
                
<!--                     <table class="table table-condensed"> -->
<!--                         <thead> -->
<!--                             <tr> -->
<!--                                 <td> -->
<!--                                     <span style='float:right'> -->
<!--                                         <button type="button" id="list_btn" class="btn">목록</button> -->
<%--                                         <c:if test="${nickname==pageInfo.writer}"> --%>
<!--                                         <button type="button" id="modify_btn" class="btn btn-default">수정 완료</button> -->
<!--                                         <button type="button" id="cancel_btn" class="btn btn-default">수정 취소</button> -->
<%--                                         </c:if>	 --%>
<!--                                     </span> -->
<!--                                 </td> -->
<!--                             </tr> -->
<!--                         </thead> -->
<!--                     </table> -->
                    <div id="board-search">
					        <div class="search-window">
								<div class="search-wrapper">
									<div style="width: 350px;" class="search-wrap">
                                        <button type="button" id="list_btn" class="btn">목록</button>
                                        <c:if test="${nickname==pageInfo.writer}">
	                                        <button type="button" id="modify_btn" class="btn btn-default">완료</button>
	                                        <button type="button" id="cancel_btn" class="btn btn-default">취소</button>
                                        </c:if>	
                                     </div>
								</div>
							</div>
					</div>
             	</form>
		</div>
</div>
        
         <hr/>
    <form id="infoForm" action="/fit/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
    	<input type="hidden" name="keyword" value="${cri.keyword }">    
    	<input type="hidden" name="type" value="${cri.type }">
	</form>
	<br><br>
	
 
				<jsp:include page="../footer.jsp"/>    
            </div>
           
            
            

    </body>
<!-- Font Awesome icons (free version)-->
   <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    <!-- Core theme JS-->
   <script src="<c:url value='/resources/js/scripts.js' />"></script>
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
   <!-- * *                               SB Forms JS                               * *-->
   <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
   <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
   <!-- Bootstrap core JS-->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
let form = $("#infoForm");        // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
let mForm = $("#modifyForm");    // 페이지 데이터 수정 from

/* 목록 페이지 이동 버튼 */
$("#list_btn").on("click", function(e){
    form.find("#bno").remove();
    form.attr("action", "/fit/list");
    form.submit();
});

/* 수정 하기 버튼 */
$("#modify_btn").on("click", function(e){
    mForm.submit();
});

/* 취소 버튼 */
$("#cancel_btn").on("click", function(e){
    form.attr("action", "/fit/get");
    form.submit();
});   

</script>	
</body>
</html>