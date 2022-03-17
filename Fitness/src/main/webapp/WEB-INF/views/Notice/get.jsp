<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 100px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
.rp_child{
	padding-left: 20px;
}
</style>
</head>
<body>
<h1>조회 페이지</h1>
<!-- 	<div class="input_wrap"> -->
<!-- 		<label>게시판 번호</label> -->
		
<!-- 	</div> -->
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 수정일</label>
		<input name="updateDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="content" readonly="readonly" style="resize:none;"><c:out value="${pageInfo.content}"/></textarea>
	</div>
	<br><br>
	
	<div id=dvReply>
	댓글<hr>
	<table>
		<tr>
			<td>
				<c:forEach items="${p1}" var="list">
		            <c:if test="${list.grpl==0 }">
				    	<table id="table${list.grp}" name="${list.no}" class="rp_parent">
				            <tr>
				                <td>${list.writer}</td>
				                <td>${list.wdate}</td>
				            </tr>
				            <tr>
			            		<c:if test="${nickname=='null' }">
			            			<td colspan=2 id="${list.no}">${list.content}</td>
			            		</c:if>
			            		<c:if test="${nickname!='null' }">
			            			<c:if test="${list.writer!=nickname }">
				            			<td id="no${list.no}">${list.content}</td>
				            			<td id="btn${list.no}">
				            				<button id="${list.grp}" onClick="reply_insert1(this.id)">답글달기</button>
				            			</td>
				            		</c:if>
				            		<c:if test="${list.writer==nickname }">
				            			<c:if test="${list.content=='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
	<%-- 				            				<button id="${list.grp}" onClick="reply_insert1(this.id)">답글달기</button> --%>
<%-- 					            				<button id="${list.no}" onClick="reply_update(this.id)">댓글수정</button> --%>
<%-- 					            				<button id="${list.no}" onClick="reply_delete(this.id)">댓글삭제</button> --%>
					            			</td>
				            			</c:if>
				            				<c:if test="${list.content!='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
					            				<button id="${list.grp}" onClick="reply_insert1(this.id)">답글달기</button>
					            				<button id="${list.no}" onClick="reply_update(this.id)">댓글수정</button>
					            				<button id="${list.no}" onClick="reply_delete(this.id)">댓글삭제</button>
					            			</td>
				            			</c:if>
				            		</c:if>
			            		</c:if>
			            	</tr>
		            	</table>	
	            	</c:if>
	            	<c:if test="${list.grpl!=0 }">
						<table id="table${list.grp}" name="${list.no}" class="rp_child">
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
<%-- 				            				<button id="${list.grp}" onClick="reply_insert1(this.id)">답글달기</button> --%>
				            			</td>
				            		</c:if>
				            		<c:if test="${list.writer==nickname }">
				            			<c:if test="${list.content=='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
	<%-- 				            				<button id="${list.grp}" onClick="reply_insert1(this.id)">답글달기</button> --%>
<%-- 					            				<button id="${list.no}" onClick="reply_update(this.id)">댓글수정</button> --%>
<%-- 					            				<button id="${list.no}" onClick="reply_delete(this.id)">댓글삭제</button> --%>
					            			</td>
				            			</c:if>
				            				<c:if test="${list.content!='삭제된 댓글입니다.' }">
					            			<td id="no${list.no}">${list.content}</td>
					            			<td id="btn${list.no}">
	<%-- 				            				<button id="${list.grp}" onClick="reply_insert1(this.id)">답글달기</button> --%>
					            				<button id="${list.no}" onClick="reply_update(this.id)">댓글수정</button>
					            				<button id="${list.no}" onClick="reply_delete(this.id)">댓글삭제</button>
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
<!-- 	<form id="replyForm" action="/fit/reply" method="post"> -->
		<div class="input_wrap">
		<input type="hidden" id="bno" name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
		<input type="hidden" id="nickname" name="nickname" readonly="readonly" value='<c:out value="${nickname}"/>' >
		<label>댓글</label>
		<textarea rows="3" id="p_content" name="p_content" style="resize:none;"></textarea>
		<a class="btn" id="p_insert_btn" >댓글 작성</a> 
	</div>
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a> 
		<c:if test="${nickname==pageInfo.writer}">
			<a class="btn" id="modify_btn">수정 하기</a>
			<a class="btn" id="delete_btn">삭제</a>
		</c:if>	
	</div>
<!-- 	</form> -->

	

	<form id="infoForm" action="/fit/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
    	<input type="hidden" name="keyword" value="${cri.keyword }">    
    	<input type="hidden" name="type" value="${cri.type }">
	</form>
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
// 		console.log("안되니");
// 	    form_r.attr("action", "/fit/reply");
// 	    form_r.attr("method", "post");
// 	    form_r.submit();
		$.post('/fit/reply',{bno:$('#bno').val(), 
							nickname:$('#nickname').val(), 
							p_content:$("#p_content").val()},function(txt){
// 				now=new Date();
// 				let yyyy = now.getFullYear();
// 				let MM = now.getMonth();
// 				let dd = now.getDate();
// 				let hh = now.getHours();
// 				let mm = now.getMinutes();
// 				let ss = now.getSeconds();
				if(txt=="fail"){
					alert('댓글작성 실패');
				} else {
// 					let maxno = txt.split(",");
// 					str='<table id="'+maxno[0]+'" name="'+maxno[1]+'" class="rp_parent">'+
// 		            '<tr><td>'+$('#nickname').val()+'</td>'+
//                 	'<td>'+yyyy+'-'+MM+'-'+dd+' '+hh+':'+mm+':'+ss+'</td></tr><tr><td id=no"'+maxno[1]+'">'+$('#p_content').val()+
//                 	'</td><td id=btn"'+maxno[1]+'">'+
//                 	'<button id="'+maxno[1]+'" onClick="reply_insert1('+maxno[1]+')">답글달기</button>'+
//          			'<button id="'+maxno[1]+'" onClick="reply_update('+maxno[1]+')">댓글수정</button>'+ 
//             		'<button id="'+maxno[1]+'" onClick="reply_delete('+maxno[1]+')">댓글삭제</button>'+
//             		'</td></tr></table>';
//             	$('#dvReply').append(str);
//             	$('#p_content').val('');

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
// 	/* 자식댓글 삭제 */
// 	function reply_delete2(id){
// 		console.log(id)
// 		console.log($("#no"+id).html());
// 		alert("댓글을 삭제하시겠습니까?")
// 		$.post('/fit/replyDelete',{no:id},function(txt){
// 			$("table[name="+id+"]").remove();
// 			},'text');
// 		return false;
// 	}
	/* 댓글 수정 창 띄우기*/
	function reply_update(id){
		console.log("updateid : "+id);
		R_reply='<td id=no'+id+'>';
		R_reply+='<textarea rows="1" cols="5" id="p_content2" name="p_content2" style="resize:none;">'+$("#no"+id).text();
		R_reply+='</textarea></td>';
		R_btn='<td id=btn'+id+'>';
		R_btn+='<button id="'+id+'" onClick="reply_update2('+id+')">완료</button>';
		R_btn+='<button id="'+id+'" onClick="reply_return('+id+')">취소</button></td>';
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
		R_btn+='<button id="'+id+'" onClick="reply_insert1(this.id)">답글달기</button>';
		R_btn+='<button id="'+id+'" onClick="reply_update(this.id)">댓글수정</button>';
		R_btn+='<button id="'+id+'" onClick="reply_delete(this.id)">댓글삭제</button></td>';
		$("#no"+id).replaceWith(R_reply);
		$("#btn"+id).replaceWith(R_btn);
	}
	/* 대댓글 창 띄우기 */
	
	function reply_insert1(id){
		R_reply='<table name=reply2><tr><td id='+id+'>';
		R_reply+='<textarea rows="1" cols="5" id="p_content2" name="p_content2" style="resize:none;"></textarea></td></tr>';
		R_reply+='<tr><td id=btn'+id+'>';
		R_reply+='<button id="'+id+'" onClick="reply_insert2('+id+')">완료</button>';
		R_reply+='<button id="'+id+'" onClick="reply_return2('+id+')">취소</button></td></tr></table>';
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
// 				now=new Date();
// 				let yyyy = now.getFullYear();
// 				let MM = now.getMonth();
// 				let dd = now.getDate();
// 				let hh = now.getHours();
// 				let mm = now.getMinutes();
// 				let ss = now.getSeconds();
// 				if(txt=="fail"){
// 					alert('댓글작성 실패');
// 				} else {
// 			let maxno = txt.split(",");
// 			str='<table id="'+maxno[0]+'" name="'+maxno[1]+'" class="rp_parent">'+
// 	    '<tr><td>'+$('#nickname').val()+'</td>'+
// 		'<td>'+yyyy+'-'+MM+'-'+dd+' '+hh+':'+mm+':'+ss+'</td></tr><tr><td id=no"'+maxno[1]+'">'+$('#p_content').val()+
// 		'</td><td id=btn"'+maxno[1]+'">'+
// 		'<button id="'+maxno[1]+'" onClick="reply_insert1('+maxno[1]+')">답글달기</button>'+
// 			'<button id="'+maxno[1]+'" onClick="reply_update('+maxno[1]+')">댓글수정</button>'+ 
// 			'<button id="'+maxno[1]+'" onClick="reply_delete('+maxno[1]+')">댓글삭제</button>'+
// 			'</td></tr></table>';
// 		$('#dvReply').append(str);
// 		$('#p_content').val('');
			
// 		}
				location.reload();
	},'text');

}
	
	
	
	
// 	$("#p_update_btn").on("click", function(e){
// 		$.post('/fit/reply',{bno:$('#bno').val(),
// 							p_content:$("#p_content").val()},function(txt){
// 				now=new Date();
// 				let yyyy = now.getFullYear();
// 				let MM = now.getMonth();
// 				let dd = now.getDate();
// 				let hh = now.getHours();
// 				let mm = now.getMinutes();
// 				let ss = now.getSeconds();
// 				if(txt=="fail"){
// 					alert('댓글작성 실패');
// 				} else {
// 					str='<table id='+txt+' class="rp_parent">'+
// 		            '<tr><td>'+$('#nickname').val()+'</td>'+
//                 	'<td>'+yyyy+'-'+MM+'-'+dd+' '+hh+':'+mm+':'+ss+'</td></tr><tr><td>'+$('#p_content').val()+
//                 	'</td><td><input type=button id="" name="" value="답글달기">'+
//          			'<input type=button id="p_update_btn" name="p_update_btn" value="댓글수정">'+ 
//             		'<input type=button id="" name="" value="댓글삭제">'+
//             		'</td></tr></table>';
//             	$('#dvReply').append(str);
//             	$('#p_content').val('');
// 				}
// 			},'text');
// 	});
</script>	
</body>
</html>