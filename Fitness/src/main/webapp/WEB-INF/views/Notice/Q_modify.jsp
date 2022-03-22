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




</style>
    <body>
     <section class="page-section bg-dark text-white">
		<jsp:include page="../header.jsp"/>
	</section>
        <div class="container2">
           
            <div class="row2">
           
                <div class="col-md-10">
                  <hr/>
                  <form id="modifyForm" action="/fit/QnA_modify" method="post">
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
                                <c:out value="${pageInfo.writer}"/> <span style='float:right'>조회 : 0</span>
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
                
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list_btn" class="btn btn-default">목록</button>
                                        <c:if test="${nickname==pageInfo.writer}">
                                        <button type="button" id="modify_btn" class="btn btn-default">수정 완료</button>
                                        <button type="button" id="cancel_btn" class="btn btn-default">수정 취소</button>
                                        </c:if>	
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
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
    form.attr("action", "/fit/QnA_list");
    form.submit();
});

/* 수정 하기 버튼 */
$("#modify_btn").on("click", function(e){
    mForm.submit();
});

/* 취소 버튼 */
$("#cancel_btn").on("click", function(e){
    form.attr("action", "/fit/QnA_get");
    form.submit();
});   

</script>	
</body>
</html>