<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>投票網</title>
</head>
<body style="padding: 15px">
		<div style="display:flex; justify-content:center; align-items: center; height:100vh;">
			<form id="loginForm" method="post" action="./login" class="pure-form">
				<fieldset>
					<legend>投票網登入</legend>
					帳號: <input type="text" id="username" name="username" placeholder="請輸入帳號" value="user123" required /><p />
				    密碼: <input type="password" id="password" name="password" placeholder="請輸入密碼" value="pass123" required /><p />
					<button type="submit" class="pure-button pure-button-primary">登入</button>
				</fieldset>
			</form>
		</div>
	</body>
</html>