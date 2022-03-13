function searchfun(search) {
	let search1 = '';
	let search2 = '';
	for (let i = 0; i <= search.length - 1; i++) {
		if (search.charAt(i) == "\"") {
			search2 += search1.concat("\\\"");
		} else if (search.charAt(i) == "\'") {
			search2 += search1.concat("\\\'");
		} else {
			search2 += search1.concat(search.charAt(i));
		}
	}
	return search2;
}
