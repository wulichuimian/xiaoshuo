<?php
	header("content-type:text/html;charset=utf-8");
	$file = $_POST["file"];
	$link = mysqli_connect("localhost","root","");
	if(!$link){
		echo "链接失败";
		exit;
	}
	//设置字符集
	mysqli_set_charset($link,"utf8");
	//选择数据库
	mysqli_select_db($link,"xiashuo");
	
	$str = "books/text/{$file}.txt";
	//读取文件中的内容
	$conn = file_get_contents($str);

	echo json_encode($conn);

	//关闭数据库
	mysqli_close($link);
?>