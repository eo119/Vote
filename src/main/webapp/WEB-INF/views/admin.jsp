<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>投票網</title>
    <style>
        body {
            display: flex;
            justify-content: space-between;
        }

        .vote-section {
            width: 45%;
            margin-right: 10px;
        }

        .result-section {
            width: 45%;
            margin-left: 40px;
        }
    </style>
</head>
<body>

<div class="vote-section">
    <sp:form modelAttribute="Vote" method="post">

        <h2>新增投票項目</h2>
        <label for="newItem">新項目名稱：</label>
        <sp:input path="newItemName" id="newItem" required="true"/>
        <sp:errors path="newItemName" cssClass="error"/>

        <button type="submit">新增項目</button>
    </sp:form>
</div>

<div class="result-section">
    <h2>目前投票結果</h2>
    <form>
        <p>炒飯：<span id="item1Votes">0</span> 票</p>
        <p>炒麵：<span id="item2Votes">0</span> 票</p>
        <p>鍋燒麵：<span id="item3Votes">0</span> 票</p>
        <p>丼飯：<span id="item3Votes">0</span> 票</p>
        <p>咖哩飯：<span id="item3Votes">0</span> 票</p>
    </form>
</div>

</body>
</html>
