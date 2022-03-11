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
	//通过该用户的表查询他加入书架的书籍的id
	$sql = "select * from a{$username}";
	// $sql = "select * from aqwe";
	
	$arr = array();
	$arr2 = array();
	$res = mysqli_query($link,$sql);
	while($row = mysqli_fetch_assoc($res)){
		array_push($arr,$row);
	}
	
	for($i=0;$i<count($arr);$i++){
		//通过获取到的id来查询该书籍的全部内容
		$sql2 = "select * from books where id like '".$arr[$i]['id']."'";
		$res2 = mysqli_query($link,$sql2);
		$row2 = mysqli_fetch_assoc($res2);
		array_push($arr2,$row2);
	}
	echo json_encode($arr2);
	//关闭数据库
	mysqli_close($link);
?>