<?php
	header("content-type:text/html;charset=utf-8");
	//统一返回格式
	$responseData = array("code"=> 0,"message"=>"");
	$username = $_POST['username'];
	$bookId = $_POST['id'];
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
	//查询这个用户名的id
	/*$sql = "select * from user where user like '{$username}'";
	$res = mysqli_query($link,$sql);
	$row = mysqli_fetch_assoc($res);*/
	
	//把这个书籍的id写入到这个用户专属的表中
	$sql2 = "insert into a{$username} (id) value('{$bookId}')";
	$res2 = mysqli_query($link,$sql2);
	
	if(!$res2){
		$responseData['code'] = 2;
		$responseData['message'] = "数据写入失败";
		echo json_encode($responseData);
		exit;
	}else{
		$responseData['message'] = "数据写入成功";
		echo json_encode($responseData);
	}
	//关闭数据库
	mysqli_close($link);
?>