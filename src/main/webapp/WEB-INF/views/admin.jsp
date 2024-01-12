<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新增項目</title>
</head>
<body>
    <div>
        <h2>目前投票品項</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>項目</th>
                    <th>目前票數</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${voteList}" var="voteObj" >
                    <tr>
                        <td>${voteObj.name}</td>
                        <td>${voteObj.count}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div>
        <h2>新增項目</h2>
        <form action="admin" method="post">
            <input type="text" name="newItem" placeholder="輸入新項目" required>
            <input type="submit" value="新增項目">
        </form>
    </div>

    <div style="margin-top: 10px;"> 
        <form action="logout" method="post">
            <input type="submit" value="登出">
        </form>
    </div>
    
</body>
</html>

