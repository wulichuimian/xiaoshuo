<?php
	header("content-type:text/html;charset=utf-8");
	$file = $_POST["file"];
	// $file = "D:/桌面/txt.txt";
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
	$str = "books/text/{$file}";
	//发送sql语句
	// fopen($file,"r+");
	// $arr = array();
	$conn = file_get_contents($str);
	// $arr = array($conn);
	// array_push($arr,$conn);
	/*$arr = array();
	$res = mysqli_query($link,$sql);
	$row = mysqli_fetch_assoc($res);*/
	// var_dump ($res);
	//处理结果
	// $row = mysqli_fetch_assoc($res);
	/*while($row = mysqli_fetch_assoc($res)){
		array_push($arr,$row);
	}
	echo json_encode($arr);*/
	// echo $row;
	echo json_encode($conn);
	// echo $file;
	// echo json_encode($arr);
	//关闭数据库
	mysqli_close($link);
?>