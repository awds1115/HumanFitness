<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${user}<br>
${user.userid }
<table>
    <tr>
        <td align=right></td>
        <td><input type=text id=email name=email size=20 readonly value="${user.userid}"></td>
    </tr>
    <tr>
        <td align = left>   
        <input type=button id="search" value='로그인으로' onclick="location.href='/fit/login'">&nbsp;       
        <input type=button value='비밀번호찾기' id='btnCancel' onclick="location.href='/fit/findpw'">
      </td>
    </tr>
    </table>
</body>
</html>