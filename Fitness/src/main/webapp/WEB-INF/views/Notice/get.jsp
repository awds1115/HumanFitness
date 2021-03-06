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
           
            <div class="row" align=center>
           
                <div align=center>
                  <hr/>
                    <table class="table table-condensed">
                        <thead>
                            <tr align="center">
                                <th width="10%">??????</th>
                                <th width="60%"><c:out value="${pageInfo.title}"/> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>?????????
                                </td>
                                <td>
                                <fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>
                                </td>
                            </tr>
                             <tr>
                                <td>?????????
                                </td>
                                <td>
                                <fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>?????????
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
                                        <button type="button" id="list_btn" class="btn">??????</button>
                                        <c:if test="${nickname==pageInfo.writer}">
	                                        <button type="button" id="modify_btn" class="btn btn-default">??????</button>
	                                        <button type="button" id="delete_btn" class="btn btn-default">??????</button>
                                        </c:if>	
                                     </div>
								</div>
							</div>
					</div>
	</div>
</div>
	<div id=dvReply style="width:100%">
	??????<hr>
	<table style="width:100%">
	<c:forEach items="${p1}" var="list">
		
			<c:if test="${list.grpl==0 }">
			<tr>
				<td class="icon_p" style="width:5%"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  				<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
						</svg>
				</td>
					<td style="width:90%">
				    	<table style="width:100%" id="table${list.grp}" name="${list.no}" class="rp_parent">
				            <tr>
				                <td colspan="2" class="writer"><strong>${list.writer}</strong></td>
				            </tr>
							<tr><td colspan="2" class="content" id="no${list.no}">${list.content}</td></tr>
			            	<tr>
				            	<td class="wdate">${list.wdate}</td>
				            	<td id="btn${list.no}" class="wbtn">
				            	<c:if test="${nickname!='null'}">
					            	<c:if test="${list.writer==nickname}">
					            		<c:if test="${list.content=='????????? ???????????????.'}">
						            		<a href='#none' onClick="reply_insert1('${list.grp}')" style="color: inherit;" role='button' id="${list.grp}">??????&nbsp;</a>
					            		</c:if>
					            		<c:if test="${list.content!='????????? ???????????????.'}">
						            		<a href='#none' onClick="reply_insert1('${list.grp}')" style="color: inherit;" role='button' id="${list.grp}">??????&nbsp;</a>
							            	<a href='#none' onClick="reply_update('${list.no},${list.grp }')" style="color: inherit;" role='button' id="${list.no}">??????&nbsp;</a>
							            	<a href='#none' onClick="reply_delete('${list.no}')" style="color: inherit;" role='button' id="${list.no}">??????</a>
					            		</c:if>
					            	</c:if>
					            	<c:if test="${list.writer!=nickname}">
					            		<a href='#none' onClick="reply_insert1('${list.grp}')" style="color: inherit;" role='button' id="${list.grp}">??????&nbsp;</a>
					            	</c:if>
					            </c:if>
				            	</td>
			            	</tr>
		            	</table>	
	            	</c:if> 
	            	<c:if test="${list.grpl!=0 }">
	            	<tr>
						<td class="icon_p2" style="padding-left: 30px; width:5%;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-right" viewBox="0 0 16 16">
  							<path fill-rule="evenodd" d="M1.5 1.5A.5.5 0 0 0 1 2v4.8a2.5 2.5 0 0 0 2.5 2.5h9.793l-3.347 3.346a.5.5 0 0 0 .708.708l4.2-4.2a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 8.3H3.5A1.5 1.5 0 0 1 2 6.8V2a.5.5 0 0 0-.5-.5z"/>
							</svg>
						</td>
					<td style="width:90%">
				    	<table width="100%" id="table${list.grp}" name="${list.no}" class="rp_child">
				            <tr>
				                <td colspan="2" class="writer"><strong>${list.writer}</strong></td>
				            </tr>
							<tr><td colspan="2" class="content" id="no${list.no}">${list.content}</td></tr>
			            	<tr>
				            	<td width="25%" class="wdate">${list.wdate}</td>
				            	<td id="btn${list.no}" class="wbtn">
					            	<c:if test="${list.writer==nickname}">
					            		<c:if test="${list.content!='????????? ???????????????.'}">
							            	<a href='#none' onClick="reply_update('${list.no},${list.grp }')" style="color: inherit;" role='button' id="${list.no}">??????&nbsp;</a>
							            	<a href='#none' onClick="reply_delete('${list.no}')" style="color: inherit;" role='button' id="${list.no}">??????</a>
					            		</c:if>
						            </c:if>
				            	</td>
			            	</tr>
		            	</table>	
	            	</c:if> 		

		</c:forEach>
	</table>
	</div>
	<br><br>
	
	<div class="input_wrap" align="right">
		<input type="hidden" id="bno" name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
		<input type="hidden" id="nickname" name="nickname" readonly="readonly" value='<c:out value="${nickname}"/>' >
		<textarea class="form-control" rows="3" id="p_content" name="p_content" style="resize:none;"></textarea>
	</div>
	
	<div id="board-search">
	        <div class="search-window">
				<div class="search-wrapper">
					<div style="width: 350px;" class="search-wrap">
						<button class="btn" id="p_insert_btn">??????</button> 
                    </div>
				</div>
			</div>
	</div>
        
         <hr/>
</div>
    <form id="infoForm" action="/fit/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
    	<input type="hidden" name="keyword" value="${cri.keyword }">    
    	<input type="hidden" name="type" value="${cri.type }">
	</form>
	<br><br>
	
 
<jsp:include page="../footer.jsp"/>    
           
            
            

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
	/* ?????? ?????? */
	$("#delete_btn").on("click", function(e){
	    form.attr("action", "/fit/delete");
	    form.attr("method", "post");
	    form.submit();
	});
	/* ?????? ?????? */
	$("#p_insert_btn").on("click", function(e){
		$.post('/fit/reply',{bno:$('#bno').val(), 
							nickname:$('#nickname').val(), 
							p_content:$("#p_content").val()},function(txt){
				if(txt=="fail"){
					alert('???????????? ??????');
				} else {

					location.reload();
				}
			},'text');
		
	});
	/* ????????? ?????? */
	function reply_delete(id){
		alert("????????? ?????????????????????????")
		$.post('/fit/replyDelete',{no:id},function(txt){
			location.reload();
			
			},'text');
		return false;
	}
	/* ?????? ?????? ??? ?????????*/
	function reply_update(id,grp){
		console.log("updateid : "+id);
		R_reply='<td colspan="2" id=no'+id+'>';
		R_reply+='<textarea class="form-control" rows="4" id="p_content2" name="p_content2" style="width: 900px;">'+$("#no"+id).text();
		R_reply+='</textarea></td>';
		R_btn='<td id="btn'+id+'" class="wdate">';
		R_btn+='<a href='+'#none'+' onClick="reply_return('+id+","+grp+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????&nbsp;&nbsp;</a>';
		R_btn+='<a href='+'#none'+' onClick="reply_update2('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????</a></td>';

		$("#no"+id).html(R_reply);
		$("#btn"+id).html(R_btn);
		return false;
	}
	/* ?????? ???????????? */
	function reply_update2(id){
			$.post('/fit/replyUpdate',{no:id,p_content:$("#p_content2").val()},function(txt){
				location.reload();
				},'text');
		}
	/* ?????? ?????? ?????? */
	function reply_return(id,grp){
		R_reply='<td colspan="2" class="content" id=no'+id+'>'+$("#no"+id).text()+'</td>';
		
		R_btn='<td id="btn'+id+'" class="wbtn">';
		R_btn+='<a href='+'#none'+' onClick="reply_insert1('+grp+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????&nbsp;&nbsp;</a>';
		R_btn+='<a href='+'#none'+' onClick="reply_update('+id+","+grp+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????&nbsp;&nbsp;</a>';
		R_btn+='<a href='+'#none'+' onClick="reply_delete('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????</a></td>';
		
		$("#no"+id).replaceWith(R_reply);
		$("#btn"+id).replaceWith(R_btn);
// 		location.reload();
	}
	/* ????????? ??? ????????? */
	
	function reply_insert1(id){
// 		alert("??????"+id);
		R_reply='<table name=reply2><tr><td colspan="2" id='+id+'>';
		R_reply+='<textarea class="form-control" rows="4" id="p_content2" name="p_content2" style="width: 900px;"></textarea></td></tr>';
		R_reply+='<tr><td id="btn'+id+'" class="wdate">';
		R_reply+='<a href='+'#none'+' onClick="reply_return2('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????&nbsp;&nbsp;</a>';
		R_reply+='<a href='+'#none'+' onClick="reply_insert2('+id+')" style="color: inherit;" role='+'button'+' id="'+id+'">??????</a></td></tr></table>';
// 		console.log("#table"+id);
		
// 		R_reply+='<button id="'+id+'" class="btn btn-default" onClick="reply_insert2('+id+')">??????</button>';
// 		R_reply+='<button id="'+id+'" class="btn btn-default" onClick="reply_return2('+id+')">??????</button></td></tr></table>';
		$('#table'+id).after(R_reply);
		return false;
	}
	/* ????????? ?????? */
	function reply_return2(id){
		$("table[name=reply2]").remove();
	}
	/* ????????? ?????? */
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