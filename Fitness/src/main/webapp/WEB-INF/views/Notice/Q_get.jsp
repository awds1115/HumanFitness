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
        <title>문의사항</title>

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
#list_btn,#modify_btn,#delete_btn,#p_insert_btn {
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
	<br><br>
        <div class="container">
           
            <div class="row">
           
                <div align=center>
                  <hr/>
                    <table class="table table-condensed">
                        <thead>
                            <tr align="center">
                                <th width="10%">제목</th>
                                <th width="60%"><c:out value="${pageInfo.title}"/> </th>
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
                                <td colspan="2" >
                                <textarea readonly class="form-control" rows="15" name="content" id="content"  >${pageInfo.content}</textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table id="commentTable" class="table table-condensed"></table>
                
                    <div id="board-search">
					        <div class="search-window">
								<div class="search-wrapper">
									<div style="width: 350px;" class="search-wrap">
                                        <button type="button" id="list_btn" class="btn">목록</button>
                                        <c:if test="${nickname==pageInfo.writer}">
	                                        <button type="button" id="modify_btn" class="btn btn-default">수정</button>
	                                        <button type="button" id="delete_btn" class="btn btn-default">삭제</button>
                                        </c:if>	
                                     </div>
								</div>
							</div>
					</div>
</div>
</div>
	<div id=dvReply>
	댓글<hr>
	<table style="width:100%">
	<c:forEach items="${p1}" var="list">
		<tr>
		<td class="icon_p" style="width:1%"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  			<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
			</svg>
		</td>
		<td style="width:90%">
			<c:if test="${list.grpl==0 }">
				    	<table style="width:100%" id="table${list.grp}" name="${list.no}" class="rp_parent">
				            <tr>
				                <td colspan="2" class="writer"><strong>${list.writer}</strong></td>
				            </tr>
							<tr><td colspan="2" class="content" id="no${list.no}">${list.content}</td></tr>
			            	<tr>
				            	<td class="wdate">${list.wdate}</td>
				            	<td id="btn${list.no}" class="wbtn">
					            	<c:if test="${type==1}">
						            	<a href='#none' onClick="reply_update('${list.no}')" style="color: inherit;" role='button' id="${list.no}">수정&nbsp;</a>
						            	<a href='#none' onClick="reply_delete('${list.no}')" style="color: inherit;" role='button' id="${list.no}">삭제</a>
					            	</c:if>
				            	</td>
			            	</tr>
		            	</table>	
	            	</c:if> 	
	        </td>
		</tr>
		</c:forEach>
	</table>
	</div>
	<br><br>
	
	<c:if test="${type==1}">
		<div class="input_wrap" align="right">
			<input type="hidden" id="bno" name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
			<input type="hidden" id="nickname" name="nickname" readonly="readonly" value='<c:out value="${nickname}"/>' >
			<textarea class="form-control" rows="3" id="p_content" name="p_content" style="resize:none;"></textarea>
		</div>
		
		<div id="board-search">
		        <div class="search-window">
					<div class="search-wrapper">
						<div style="width: 350px;" class="search-wrap">
							<button class="btn" id="p_insert_btn">등록</button> 
	                    </div>
					</div>
				</div>
		</div>
	</c:if>
        
         <hr/>
         
    <form id="infoForm" action="/fit/QnA_modify" method="get">
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

	let form = $("#infoForm");
	let form_r = $("#replyForm");

	
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/fit/QnA_list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/fit/QnA_modify");
		form.submit();
	});	
	/* 삭제 버튼 */
	$("#delete_btn").on("click", function(e){
	    form.attr("action", "/fit/QnA_delete");
	    form.attr("method", "post");
	    form.submit();
	});
	/* 댓글 작성 */
	$("#p_insert_btn").on("click", function(e){
		if($("#p_content").val()==''){
			alert('내용을 입력해주세요.')
			return false;
		}
		$.post('/fit/QnA_reply',{bno:$('#bno').val(), 
							nickname:$('#nickname').val(), 
							p_content:$("#p_content").val()},function(txt){
				if(txt=="fail"){
					alert('댓글작성 실패');
				} else {
					
					location.reload();
				}
			},'text');
		
	});
	/* 모댓글 삭제 */
	function reply_delete(id){
		alert("댓글을 삭제하시겠습니까?"+id)
		$.post('/fit/QnA_replyDelete',{no:id},function(txt){
			location.reload();
			
			},'text');
		return false;
	}
	/* 댓글 수정 창 띄우기*/
	function reply_update(id){
// 		console.log("updateid : "+id);
		R_reply='<td colspan="2" id=no'+id+'>';
		R_reply+='<textarea class="form-control" rows="4" id="p_content2" name="p_content2" style="width: 900px;">'+$("#no"+id).text();
		R_reply+='</textarea></td>';
// 		R_btn='<td id=btn'+id+'>';
// 		R_btn+='<button id="'+id+'" class="btn btn-default"  onClick="reply_update2('+id+')">완료</button>';
// 		R_btn+='<button id="'+id+'" class="btn btn-default" onClick="reply_return('+id+')">취소</button></td>';
// 		console.log($("#no"+id).text());
// 		console.log(R_reply+"<br>"+R_btn);
		R_btn='<td id="btn'+id+'" class="wdate">';
		R_btn+='<a href='+'#none'+' onClick="reply_return('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">취소&nbsp;&nbsp;</a>';
		R_btn+='<a href='+'#none'+' onClick="reply_update2('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">완료</a></td>';
		
    	

		$("#no"+id).html(R_reply);
		$("#btn"+id).html(R_btn);
		return false;
	}
	/* 댓글 업데이트 */
	function reply_update2(id){
			$.post('/fit/QnA_replyUpdate',{no:id,p_content:$("#p_content2").val()},function(txt){
// 				alert("업데이트?");
				location.reload();
				},'text');
		}
	/* 댓글 수정 취소 */
	function reply_return(id){
		R_reply='<td colspan="2" class="content" id=no'+id+'>'+$("#no"+id).text()+'</td>';
		
		R_btn='<td id="btn'+id+'" class="wbtn">';
		R_btn+='<a href='+'#none'+' onClick="reply_update('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">수정&nbsp;&nbsp;</a>';
		R_btn+='<a href='+'#none'+' onClick="reply_delete('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">삭제</a></td>';
		
		$("#no"+id).replaceWith(R_reply);
		$("#btn"+id).replaceWith(R_btn);
	}
</script>
</html>