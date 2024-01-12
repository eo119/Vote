<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>投票網</title>
</head>
<body>
    <form action="./voting" method="post">
        <h2>投票品項</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>項目</th>
                    <th>目前票數</th>
                    <th>投票</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${voteList}" var="voteObj" >
                    <tr>
                        <td>${voteObj.name}</td>
                        <td>${voteObj.count}</td>
                        <td>
                            	<a class="pure-button pure-button-primary" type="button" href="${pageContext.request.contextPath}/mvc/vote/voting/${voteObj.id}">投票</a>
                            	
                            
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
    
     <div style="margin-top: 10px;"> 
        <form action="logout" method="post">
            <input type="submit" value="登出">
        </form>
    </div>
</body>
</html>





