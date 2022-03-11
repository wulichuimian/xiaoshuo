//创建header
function header() {
	$("#header").html(
		'<div class="logo">小说阅读</div><div class="fun"><div class="search"></div><div class="user"></div></div>');
	$(function() {
		$(".search").click(function() {
			window.location.href = "search.html";
		})
		$(".user").click(function() {
			cookies = document.cookie;
			if (cookies == '') {
				window.location.href = "login.html";
			} else {
				window.location.href = "user.html";
			}

		})
	})
}

//创建nev
function nev() {
	var nevHref = ["index.html", "category.html", "free.html", "bookcase.html"];
	$("#nev").html(
		'<ul><li id="boutique_tab" class="cur">精选</li><li id="category_tab">分类</li><li id="recommend_tab">免费</li><li id="bookcase_tab">书架</li></ul>'
		);
	$("#nev").find("li").each(function(index, element) {
		$(this).click(function() {
			window.location.href = nevHref[index];
		});
	})
}

//创建article
//创建article里select-nev的内容
function articleNev() {
	let artText = ["男生", "女生", "完结", "排行"];
	let imgSrc = ["img/23bf9f64bfc941939d077f4aa5358abb.png", "img/edd6d5f39d3544f2a799e50c59858f3c.png",
		"img/2a52bc621ad0411eb0b768f1f24997c7.png", "img/b6eaec072e58414c97252a0ca8f8f08c.png"
	];
	let art = document.getElementById("article");
	let str = '';
	for (let j = 0; j < 4; j++) {
		str += `<li>
					<img src="${imgSrc[j]}" alt="">
					<p>${artText[j]}</p>
				</li>`;
	}
	art.innerHTML += `<section class="select-nev">
			<ul>${str}</ul>
		</section>`;
}

//创建article里select-text的内容
function articleText() {
	var art = document.getElementById("article");
	art.innerHTML += `<div class="ious"><div>`;
	$ajax({
		method: "post",
		url: "getBooks.php",
		success: function(resul, date) {
			var arr = JSON.parse(resul);
			console.log(date);
			for (let i = 0; i < arr.length; i++) {
				art.innerHTML += `<section class="select-text">
						<ul>
							<li>
								<img src=${arr[i].imgUrl} loading='lazy'>
								<div class='text'>
									<h2>
										<a href="booksIntroduce.html?id=${arr[i].id}">${arr[i].title}</a>
									</h2>
									<p>${arr[i].Introduction}</p>
								</div>
								<div class="idNone">${arr[i].id}</div>
							</li>
						</ul>
					</section>`;
			}
		},
		error: function(mag) {
			console.log(mag);
		}
	})
}

//创建footer
function footer() {
	//footer-nev
	var footerText = ["精选", "分类", "免费", "男频", "女频"]
	var footerHref = ["index.html", "category.html", "free.html", "#"];
	let footer = document.getElementById("footer");
	let str = '';
	for (let j = 0; j < 5; j++) {
		str += `<li><a href="${footerHref[j]}">${footerText[j]}</a></li>`;
	}
	footer.innerHTML += `<ul>${str}<ul>`;


	//footer-版权
	footer.innerHTML+=`<div class="infos">
			<div class="copyright">Copyright © 2022 xxxxxx.com</div>
			<div class="contri">
				<a href="index.html">小说首页</a>
				<div>|</div>
				<a href="javascript:;">服务声明</a>
			</div>
			<div class="contact">
				客服电话
				<a href="javascript:;">1234-12345678</a>
				<span>
					ICP证：
					<a href="javascript:;">粤XX-12345678</a>
				</span>
			</div>
		</div>`;
}

//创建分类页
function section(Categories,arr) {
	let art = document.getElementById("article");
	let str = "";
	for (let i = 0; i <= arr.length - 1; i++) {
		str += `<li>
					<img src="${arr[i].src}" alt="">
					<div class="text">
						<div class="title">${arr[i].title}</div>
						<div class="desc">${arr[i].desc}</div>
					</div>
				</li>`;
	}
	art.innerHTML += `<div class="tit">${Categories}</div>
		<div class="category">
			<ul>${str}</ul>
		</div>
		<div class="tit"></div>`;
}

//头部按钮的点击事件
function button1() {
	$(".return").click(function() {
		window.history.go(-1);
	})
	$(".home").click(function() {
		window.location.href = "index.html";
	})
}
