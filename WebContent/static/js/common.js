/**
 * 用户登录
 */
function login() {
	var username = $('#username').val();
	var password = $('#password').val();
	if(username == null || username.length == 0|| password == null || password.length == 0) {
		alert('用户名和密码不能为空！');
		return;
	}
	
	$.ajax({
		type: 'post',//请求方式
		url: 'loginServlet',//请求地址
		data: {'username':username, 'password': password},
		error: function() {//返回失败
			alert('登录失败！');
		},
		success: function(data) {//返回成功执行回调函数
			if(data == -1) {
				alert('用户名和密码不能为空！');
			} else if(data == -2) {
				alert('用户不存在！');
			} else if(data == -3) {
				alert('用户名或密码错误！');
			} else {
				window.location.href = 'main.jsp';
			}
		}
	});
} 

/**
 * 用户注册
 * */
function register() {
	var username = $('#username').val();
	var password = $('#password').val();
	var repassword = $('#repassword').val();
	
	if(username == null || username.length == 0) {
		alert('用户名不能为空！');
		return false;
	}
	if(password == null || password.length == 0) {
		alert('密码不能为空！');
		return false;
	}
	if(/^[\w]{6,20}$/g.test(password) == false) {
		alert('只能输入6-20位的数字、字母、下划线！');
		return false;
	}
	if(repassword == null || repassword.length == 0) {
		alert('请再次输入密码');
		return false;
	}
	if(password != repassword) {
		alert("两次输入密码不一致！");
		return false;
	}
	
	$.ajax({
		type: 'post',
		url: 'registerServlet',
		data: {'username': username, 'password': password},
		error: function() {
			alter('注册失败！');
		},
		success: function(data) {
			if(data == -1) {
				alert('用户名和密码不能为空！');
			} if(data == -2) {
				alert('用户名已存在！');
			} if(data == -3) {
				alert("只能输入6-20位的字母、数字、下划线！");
			} else {
				if(confirm('注册成功！')) {
					window.location.href = 'login.jsp';
				}
			}
		}
	});
}

/**
 * 退出
 */
function logout() {
	if(confirm('确认退出？')) {
		var xmlhttp;
		//创建XMLHttpRequest对象
		if(window.XMLHttpRequest) {
			 //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
			xmlhttp = new XMLHttpRequest();
		} else {
			// IE6, IE5 浏览器执行代码
			xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
		}
		
		xmlhttp.onreadystatechange = function() {
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				window.location.href = 'login.jsp';
			}
		}
		xmlhttp.open('get', 'logoutServlet', true);
		xmlhttp.send();
	}
}


/*******************************暂时没使用，需要再完善************************************/
/**
 * 检查用户名称是否被占用
 */
function checkIsExist(e) {
	var username = $(e).val();
	if(username == null || username.length == 0) return false; 
	$.ajax({
		type: 'post',//请求方式
		url: 'checkIsExistServlet',//请求地址
		data: {'username':username},
		success: function(data) {//返回成功执行回调函数
			if(data == 1) {
				$(e).css({
					'color':'red',
				});
				$(e).parent().css({
					'border':'solid 1px red',
				});
				$(e).parent().next().find('span').html('用户名已被占用');
				$(e).parent().next().show();
			} else {
				/*$(e).css({
					'color':'#ccc',
				});
				$(e).parent().css({
					'border':'solid 1px #ccc',
				});*/
				$(e).parent().next().find('span').html('用户名/手机号/邮箱不能为空');
				$(e).parent().next().hide();
			}
		}
		
	});
}

/**
 * 校验密码
 * @param mine
 */
function checkPassword(mine) {
	var password = $(mine).val();
	var reg = /^[\w]{6,20}$/g;//正则表达式的简写形式，这种形式不加引号。还可以用RegExp对象声明正则表达式。
	if(reg.test(password) == false) {//！reg.test(password)在前面加感叹号不能取反（不知道为什么），只好用==的方式来判断
		$(mine).css({
			'color':'red',
		});
		$(mine).parent().css({
			'border':'solid 1px red',
		});
		$(mine).parent().next().find('span').html('只能输入6-20位的字母、数字、下划线');
		$(mine).parent().next().show();
	} else {
		$(mine).css({
			'color':'#ccc',
		});
		$(mine).parent().css({
			'border':'solid 1px #ccc',
		});
		$(mine).parent().next().hide();
	}
}

function checkRepassword(mine) {
	var repassword = $(mine).val();
	var password = $('#password').val();
	if(password != repassword) {
		$(mine).css({
			'color':'red',
		});
		$(mine).parent().css({
			'border':'solid 1px red',
		});
		$(mine).parent().next().find('span').html('两次输入的密码不一致');
		$(mine).parent().next().show();
	} else {
		$(mine).css({
			'color':'#ccc',
		});
		$(mine).parent().css({
			'border':'solid 1px #ccc',
		});
		$(mine).parent().next().hide();
	}
}


