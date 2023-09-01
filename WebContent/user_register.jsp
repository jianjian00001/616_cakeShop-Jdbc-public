<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>用户注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
	<script type="text/javascript">
		// 验证注册输入是否合理
		function chekckInput(form){
			if (form.username.values.length == 0){
				alert("用户名不可为空");
				return false;
			}else if(form.password.values.length == 0) {
				alert("密码不可为空");
				return false;
			}else if(form.email.values.length == 0) {
				alert("邮箱不可为空");
				return false;
			}else if(form.name.values.length == 0) {
				alert("收货人不可为空");
				return false;
			}else if(form.phone.values.length == 0) {
				alert("电话不可为空");
				return false;
			}else if(form.address.values.length == 0) {
				alert("配送地址不可为空");
				return false;
			}else if(form.username.values.length >= 12){
				alert("用户名超出限定范围，请输入1~12个范围内的字符");
				return false;
			}else if(form.password.values.length > 18){
				alert("密码超出限定范围，请输入1~12个范围内的字符");
				return false;
			}else if(form.name.values.length >= 8){
				alert("用户名超出限定范围，请输入1~8个范围内的字符");
				return false;
			}else if(form.phone.values.length > 11){
				alert("请输入正确的手机号格式，11个数字范围内");
				return false;
			}else if(form.maddress.values.length >= 60){
				alert("地址内容超出要求限定范围，请输入1~60个范围内的字符");
				return false;
			}
			var userNameCheck = "^\w+$";
			if(!userNameCheck.test(form.username.values)){
				alert("只能输入数字、26个英文字母或者下划线组成的字符串");
				return false;
			}
			var passwordCheck = "^[a-zA-Z]\w{5,17}$";
			if(!passwordCheck.test(form.password.values)){
				alert("密码必须由字母开头，长度在6~18之间");
				return false;
			}
		}
	</script>
</head>
<body>

	

	<jsp:include page="/header.jsp"></jsp:include>

	
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-danger">${msg }</div>
				</c:if>
				<form action="${pageContext.request.contextPath }/user_register" method="post"> 
					<div class="register-top-grid">
						<h3>注册新用户</h3>
						<div class="input">
							<span>用户名 <label style="color:red;">*</label></span>
							<input type="text" name="username" placeholder="请输入用户名" required="required"> 
						</div>
						<div class="input">
							<span>邮箱 <label style="color:red;">*</label></span>
							<input type="text" name="email" placeholder="请输入用户名" required="required"> 
						</div>
						<div class="input">
							<span>密码 <label style="color:red;">*</label></span>
							<input type="text" name="password" placeholder="请输入密码" required="required"> 
						</div>
						<div class="input">
							<span>收货人<label></label></span>
							<input type="text" name="name" placeholder="请输入收货人名称">
						</div>
						<div class="input">
							<span>收货电话<label></label></span>
							<input type="text" name="phone" placeholder="请输入收货电话"> 
						</div>
						<div class="input">
							<span>收货地址<label></label></span>
							<input type="text" name="address" placeholder="请输入收货地址"> 
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="提交" onclick="return chekckInput(this);">
					   <div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>