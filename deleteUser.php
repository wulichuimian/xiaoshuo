<?php
	header("content-type:text/html;charset=utf-8");
	//统一返回格式
	$responseData = array("code"=> 0,"message"=>"");
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
	$sql = "delete from user where user like '{$username}'";
	
	$res = mysqli_query($link,$sql);
	if(!$res){
		$responseData['code'] = 2;
		$responseData['message'] = "用户删除失败";
		echo json_encode($responseData);
		exit;
	}else{
		$responseData['message'] = "用户删除成功";
		echo json_encode($responseData);
	}
	//关闭数据库
	mysqli_close($link);
?>