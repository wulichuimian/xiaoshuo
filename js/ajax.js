function querysting(obj) {
	var str = "";
	for (let attr in obj) {
		str += attr + "=" + obj[attr] + "&";
	}
	return str.substring(0, str.length - 1);
}

function $ajax({
	method = "get",
	url,
	data,
	contentType = "application/x-www-form-urlencoded",
	success,
	error
}) {
	var xhr = null;
	try {
		xhr = new XMLHttpRequest();
	} catch (e) {
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	}
	/*
	1.请求方式
	2.url
	3.是否异步
	*/
   xhr.timeout = 2000;
   xhr.ontimeout = function(){
	   alert(1);
   }
   xhr.onerror = function(){
   	   alert(1);
   }
	if (data) {
		data = querysting(data);
	}
	if (method == "get" && data) {
		xhr.open(method, url + "?" + data ,true);
		xhr.send();
	} else {
		xhr.open(method, url ,true);
			xhr.setRequestHeader("content-type", contentType);
		xhr.send(data);
	}
	//发送请求
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				if (success) {
					success(xhr.responseText,xhr);
				}
			} else {
				if (error) {
					error("Error" + xhr.status);
				}
			}

		}
	}


}
