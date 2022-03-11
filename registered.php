<?php
	header("content-type:text/html;charset=utf-8");
	//统一返回格式
	$responseData = array("code"=> 0,"message"=>"");
	$username = $_POST['username'];
	$passwd = $_POST["passwd"];
	$link = mysqli_connect("localhost","root","");
	if(!$username){
		$responseData['code'] = 1;
		$responseData['message'] = "账号不能为空";
		echo json_encode($responseData);
		exit;
	}
	if(!$passwd){
		$responseData['code'] = 2;
		$responseData['message'] = "密码不能为空";
		echo json_encode($responseData);
		exit;
	}
	if(!$link){
		$responseData['code'] = 3;
		$responseData['message'] = "数据库连接失败";
		echo json_encode($responseData);
		exit;
	}
	//设置字符集
	mysqli_set_charset($link,"utf8");
	//选择数据库
	mysqli_select_db($link,"xiashuo");
	//准备sql语句
	$sql1 = "select * from user where user like '{$username}'";
	
	
	$res1 = mysqli_query($link,$sql1);
	$row = mysqli_fetch_assoc($res1);
	if($row){
		$responseData['code'] = 4;
		$responseData['message'] = "用户已存在";
		echo json_encode($responseData);
		exit;
	}
	$str = md5(md5(md5($passwd)."abc")."acd");
	$sql2 = "INSERT INTO user(user,passwd) VALUES('{$username}','{$str}')";
	$res2 = mysqli_query($link,$sql2);
	if(!$res2){
		$responseData['code'] = 5;
		$responseData['message'] = "注册失败";
		echo json_encode($responseData);
		exit;
	}else{
		$responseData['message'] = "注册成功";
		echo json_encode($responseData);
	}
	//关闭数据库
	mysqli_close($link);
?>