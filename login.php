<?php
	header("content-type:text/html;charset=utf-8");
	$responseData = array("code"=> 0,"message"=>"");
	//接收数据
	$username = $_POST['username'];
	$passwd = $_POST["passwd"];
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
	$link = mysqli_connect("localhost","root","");
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
	// $sql = "select * from user where user = 'abc'";
	$str = md5(md5(md5($passwd)."abc")."acd");
	$sql = "select * from user where user like '{$username}' and passwd like '{$str}'";
	// $sql1 = "select * from user where passwd like '{$passwd}'";
	//发送sql语句
	$res = mysqli_query($link,$sql);
	$row = mysqli_fetch_assoc($res);
	// $res1 = mysqli_query($link,$sql1);
	if(!$row){
		$responseData['code'] = 5;
		$responseData['message'] = "账号或密码错误";
		echo json_encode($responseData);
		exit;
	}else{
		$responseData['message'] = "登录成功";
		echo json_encode($responseData);
	}
	// var_dump ($res);
	//处理结果
	// $row = mysqli_fetch_assoc($res);
	/*while($row = mysqli_fetch_assoc($res)){
		array_push($arr,$row);
	}
	echo json_encode($arr);*/
	//关闭数据库
	mysqli_close($link);
?>