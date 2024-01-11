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
${voteList}

    <div class="vote-section">
        <h1>投票網</h1>

        <form action="VoteServlet" method="post">
            <input type="checkbox" name="item" value="item1">炒飯<br>
            <input type="checkbox" name="item" value="item2">炒麵<br>
            <input type="checkbox" name="item" value="item3">鍋燒麵<br>
            <input type="checkbox" name="item" value="item3">丼飯<br>
            <input type="checkbox" name="item" value="item3">咖哩飯<br>
            <input type="submit" value="投票">
        </form>
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
