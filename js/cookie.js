function setCookie(name,value,{expires,path}){
	var cookieStr = name +"=" + value;
	if(expires){
		cookieStr += ";expires="+expires;
	}
	if(path){
		cookieStr += ";path="+path;
	}
	document.cookie = cookieStr;
}
function getCookie(name){
	var cookieStr = document.cookie;
	var start = cookieStr.indexOf(name);
	if(start == -1){
		return null;
	}else{
		var end = cookieStr.indexOf("&",start);
		if(end == -1){
			end = cookieStr.length;
		}
	}
	var strCookie = cookieStr.substring(start,end);
	var arr = strCookie.split("=");
	return arr[1];
}
function removeCookie(name){
	document.cookie = name+"=;expires="+new Date(0);
}