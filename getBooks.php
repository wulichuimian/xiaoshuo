<?php
	header("content-type:text/html;charset=utf-8");
	//统一返回格式
	$responseData = array("code"=> 0,"message"=>"");
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
	$sql = "select * from books ";
	$res = mysqli_query($link,$sql);
	$arr = array();
	while($row = mysqli_fetch_assoc($res)){
		array_push($arr,$row);
	}
	echo json_encode($arr);
	//关闭数据库
	mysqli_close($link);
?>