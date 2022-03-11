<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="./js/ajax.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
	</head>
	<body>
		<script type="text/javascript">
			window.onload = function(){var btn = document.getElementsByTagName("button");
			btn[0].onclick = function() {
				$ajax({
					method:"get",
					url:"php1.php",
					success:function(resul){
						var arr = JSON.parse(resul);
						console.log(arr);
					},
					error:function(mag){
						console.log(mag);
					}
				});
			}}
		</script>
		<button type="button">huoqu</button>
	</body>
</html>
