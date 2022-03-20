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

textarea{
	width: 1100px;
    height: 100px;
    font-size: 15px;
    padding: 10px;
   resize: none;
}
.wdate{
	padding-left: 2.25rem;
    padding-bottom: 1rem;
    color: #BDBDBD;
    font-size: 0.75rem;
    
}
.rp_child{
	margin-left: 30px;
}
.content,
.writer{
	padding-left: 2.25rem;
}
.icon_p{
  padding-bottom: 4rem;
}
a{ text-decoration:none;} 
a:hover { 
text-decoration:none;
color: #BDBDBD;
 }

</style>
    <body>
     <section class="page-section bg-dark text-white">
		<jsp:include page="../header.jsp"/>
	</section>
        <div class="container2">
           
            <div class="row2">
           
                <div class="col-md-10">
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
                
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list_btn" class="btn btn-default">목록</button>
                                        <c:if test="${nickname==pageInfo.writer}">
                                        <button type="button" id="modify_btn" class="btn btn-default">수정</button>
                                        <button type="button" id="delete_btn" class="btn btn-default">삭제</button>
                                        </c:if>	
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
	</div>
</div>
	<div id=dvReply>
	댓글<hr>
	<table>
		<tr>
			<td>
				<c:forEach items="${p1}" var="list">
		            <c:if test="${list.grpl==0 }">
				    	<table id="table${list.grp}" name="${list.no}" class="rp_parent">
				            <tr><td class="writer"><strong>${list.writer}</strong></td></tr>
			            		<c:if test="${nickname=='null' }">
			            			<tr><td class="content" id="no${list.no}">${list.content}</td></tr>
			            			<tr><td class="wdate">${list.wdate}</td></tr>
			            		</c:if>
			            		<c:if test="${nickname!='null' }">
			            			<c:if test="${list.writer!=nickname }">
				            			<tr><td class="content" id="no${list.no}">${list.content}</td></tr>
				            			<tr><td class="wdate">${list.wdate}</td>
							            	<td id="btn${list.no}" class="wdate">
								            	<a href='#none' onClick="reply_insert1('${list.no}')" style="color: inherit;" role='button' id="${list.no}">댓글</a>
							            	</td>
							            	</tr>
<%-- 				            			<td id="btn${list.no}"> --%>
<%-- 				            				<button id="${list.grp}" class="btn btn-default" onClick="reply_insert1(this.id)">댓글</button> --%>
<!-- 				            			</td> -->
				            		</c:if>
				            		<c:if test="${list.writer==nickname }">
				            			<c:if test="${list.content=='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
					            			</td>
				            			</c:if>
				            				<c:if test="${list.content!='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
					            				<button id="${list.grp}" class="btn btn-default" onClick="reply_insert1(this.id)">댓글</button>
					            				<button id="${list.no}" class="btn btn-default" onClick="reply_update(this.id)">수정</button>
					            				<button id="${list.no}" class="btn btn-default" onClick="reply_delete(this.id)">삭제</button>
					            			</td>
				            			</c:if>
				            		</c:if>
			            		</c:if>
			            	
		            	</table>	
	            	</c:if>
	            	<c:if test="${list.grpl!=0 }">
						<table id="table${list.grp}" name="${list.no}" class="rp_child" >
		            		<tr>
				                <td>${list.writer}</td>
				                <td>${list.wdate}</td>
				            </tr>
				            <tr>
			            		<c:if test="${nickname=='null' }">
			            			<td colspan=2>${list.content}</td>
			            		</c:if>
			            		<c:if test="${nickname!='null' }">
			            			<c:if test="${list.writer!=nickname }">
				            			<td id="no${list.no}">${list.content}</td>
				            			<td id="btn${list.no}">

				            			</td>
				            		</c:if>
				            		<c:if test="${list.writer==nickname }">
				            			<c:if test="${list.content=='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">

					            			</td>
				            			</c:if>
				            				<c:if test="${list.content!='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
					            				<button id="${list.no}" class="btn btn-default" onClick="reply_update(this.id)">수정</button>
					            				<button id="${list.no}" class="btn btn-default" onClick="reply_delete(this.id)">삭제</button>
					            			</td>
				            			</c:if>
				            		</c:if>
			            		</c:if>
			            	</tr>
			            </table>	
	            	</c:if>
	        	</c:forEach>
	        </td>
		</tr>
	</table>
	</div>
	
	<br><br>

	<div class="input_wrap">
		<input type="hidden" id="bno" name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
		<input type="hidden" id="nickname" name="nickname" readonly="readonly" value='<c:out value="${nickname}"/>' >
		<textarea rows="3" id="p_content" name="p_content" style="resize:none;"></textarea>
		<a class="btn btn-default" id="p_insert_btn" >확인</a> 
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

	let form = $("#infoForm");
	let form_r = $("#replyForm");

	
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/fit/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/fit/modify");
		form.submit();
	});	
	/* 삭제 버튼 */
	$("#delete_btn").on("click", function(e){
	    form.attr("action", "/fit/delete");
	    form.attr("method", "post");
	    form.submit();
	});
	/* 댓글 작성 */
	$("#p_insert_btn").on("click", function(e){
		$.post('/fit/reply',{bno:$('#bno').val(), 
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
		alert("댓글을 삭제하시겠습니까?")
		$.post('/fit/replyDelete',{no:id},function(txt){
			location.reload();
			
			},'text');
		return false;
	}
	/* 댓글 수정 창 띄우기*/
	function reply_update(id){
		console.log("updateid : "+id);
		R_reply='<td id=no'+id+'>';
		R_reply+='<textarea rows="1" cols="5" id="p_content2" name="p_content2" style="resize:none;">'+$("#no"+id).text();
		R_reply+='</textarea></td>';
		R_btn='<td id=btn'+id+'>';
		R_btn+='<button id="'+id+'" class="btn btn-default"  onClick="reply_update2('+id+')">완료</button>';
		R_btn+='<button id="'+id+'" class="btn btn-default" onClick="reply_return('+id+')">취소</button></td>';
		console.log($("#no"+id).text());
		console.log(R_reply+"<br>"+R_btn);
		$("#no"+id).html(R_reply);
		$("#btn"+id).html(R_btn);
		return false;
	}
	/* 댓글 업데이트 */
	function reply_update2(id){
			$.post('/fit/replyUpdate',{no:id,p_content:$("#p_content2").val()},function(txt){
				location.reload();
				},'text');
		}
	/* 댓글 수정 취소 */
	function reply_return(id){
		R_reply='<td id=no'+id+'>'+$("#no"+id).text()+'</td>';
		
		R_btn='<td id=btn'+id+'>';
		R_btn+='<button id="'+id+'" class="btn btn-default" onClick="reply_insert1(this.id)">답글달기</button>';
		R_btn+='<button id="'+id+'" class="btn btn-default" onClick="reply_update(this.id)">댓글수정</button>';
		R_btn+='<button id="'+id+'" class="btn btn-default" onClick="reply_delete(this.id)">댓글삭제</button></td>';
		$("#no"+id).replaceWith(R_reply);
		$("#btn"+id).replaceWith(R_btn);
	}
	/* 대댓글 창 띄우기 */
	
	function reply_insert1(id){
		R_reply='<table name=reply2><tr><td id='+id+'>';
		R_reply+='<textarea rows="1" cols="5" id="p_content2" name="p_content2" style="resize:none;"></textarea></td></tr>';
		R_reply+='<tr><td id=btn'+id+'>';
		R_reply+='<button id="'+id+'" class="btn btn-default" onClick="reply_insert2('+id+')">완료</button>';
		R_reply+='<button id="'+id+'" class="btn btn-default" onClick="reply_return2('+id+')">취소</button></td></tr></table>';
		$("#table"+id).append(R_reply);
		return false;
	}
	/* 대댓글 취소 */
	function reply_return2(id){
		$("table[name=reply2]").remove();
	}
	/* 대댓글 작성 */
	function reply_insert2(id){
		$.post('/fit/reply2',{
			bno:$('#bno').val(), 
			grp:id,
			nickname:$('#nickname').val(), 
			p_content:$("#p_content2").val()},function(txt){
				location.reload();
	},'text');

}
</script>
</html>