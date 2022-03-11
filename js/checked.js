function checked(inp){
	inp[0].onclick = function(){
		for(let i=1;i<inp.length;i++){
			inp[i].checked = this.checked
		}
	}
	for(let i=1;i<inp.length;i++){
		inp[i].onclick = function(){
			let inp1 = true;
			for(let j=1;j<inp.length;j++){
				if(inp[j].checked == false){
					inp1 = false;
				}
			}
			inp[0].checked = inp1;
			
		}
	}
}
