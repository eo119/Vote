<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>投票網</title>
</head>
<body>
    <form action="voting" method="post">
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
                            <button type="submit" name="votedItem">投票</button>
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





