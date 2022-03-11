function registered() {
	$(".registered").click(function() {
		var username = $(".username").val();
		var passwd = $(".passwd").val();
		var prompt = $(".prompt");
		//创建用户
		$ajax({
			method: "post",
			url: "registered.php",
			data: {
				username: username,
				passwd: passwd
			},
			success: function(resul) {
				var obj = JSON.parse(resul);
				console.log(obj);
				if (obj.code == 0) {
					//创建用户专属表
					$ajax({
						method: "post",
						url: "theRegistry.php",
						data: {
							username: username,
						},
						success: function(resul) {
							var obj = JSON.parse(resul);
							console.log(obj);
							//如果创建数据表失败就把该用户删除；
							if (obj.code != 0) {
								$ajax({
									method: "post",
									url: "deleteUser.php",
									data: {
										username: username,
									},
									success: function(resul) {
										var obj = JSON.parse(resul);
										console.log(obj);
									},
									error: function(mag) {
										console.log(mag);
									}
								});
							}
						},
						error: function(mag) {
							console.log(mag);
						}
					});
					if (prompt.removeClass("failure")) {
						prompt.removeClass("failure")
					}
					prompt.addClass("successful");
				} else {
					if (prompt.removeClass("successful")) {
						prompt.removeClass("successful")
					}
					prompt.addClass("failure");
				}
				prompt.text(obj.message);
				// console.log(obj);
			},
			error: function(mag) {
				console.log(mag);
			}
		})
	})
	$(".registered").siblings("div").eq(1).click(function() {
		window.location.href = "login.html";
	})
}
