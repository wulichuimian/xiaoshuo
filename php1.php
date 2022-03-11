<?php
	header("content-type:text/html;charset=utf-8");
	$link = mysqli_connect("localhost","root","");
	if(!$link){
		echo "链接失败";
		exit;
	}
	//设置字符集
	mysqli_set_charset($link,"utf8");
	//选择数据库
	mysqli_select_db($link,"xiashuo");
	//准备sql语句
	// $str = "select * from us"."er";
	// $str2 = "er";
	// $sql = concat($str,$str2);
	$sql ="select * from us"."er";
	$str = "create table a"."a"."(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY
	)";
	//发送sql语句
	$arr = array();
	$res = mysqli_query($link,$sql);
	$row = mysqli_fetch_assoc($res);
	// var_dump ($res);
	//处理结果
	// $row = mysqli_fetch_assoc($res);
	/*while($row = mysqli_fetch_assoc($res)){
		array_push($arr,$row);
	}
	echo json_encode($arr);*/
	// echo $row;
	echo json_encode($row["id"]).$str;
	//关闭数据库
	mysqli_close($link);
?>