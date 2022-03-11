<?php
	header("content-type:text/html;charset=utf-8");
	$responseData = array("code"=> 0,"message"=>"");
	//接收数据
	$username = $_POST['username'];
	$link = mysqli_connect("localhost","root","");
	if(!$link){
		$responseData['code'] = 1;
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
	$sql = "select * from user where user like '{$username}'";
	// $sql1 = "select * from user where passwd like '{$passwd}'";
	//发送sql语句
	$res = mysqli_query($link,$sql);
	$row = mysqli_fetch_assoc($res);
	echo json_encode($row);
	//关闭数据库
	mysqli_close($link);
?>