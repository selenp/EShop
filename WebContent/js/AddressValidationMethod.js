f_account = false;
function xmlHttpObject() {
	var xmlHttpRequest;
	if (window.ActiveXObject) {
		xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		xmlHttpRequest = new XMLHttpRequest();
	}
	return xmlHttpRequest;
}
var myXmlHttpRequest = null;
function checkName() {
	var username = $("#username").val();
	myXmlHttpRequest = xmlHttpObject();
	if (myXmlHttpRequest) {
		var url = "checkUsername?username=" + username;
		myXmlHttpRequest.open("post", url, true);
		myXmlHttpRequest.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		myXmlHttpRequest.onreadystatechange = handle;
		myXmlHttpRequest.send();
	}
}
function handle() {
	if (myXmlHttpRequest.readyState == 4 && myXmlHttpRequest.status == 200) {
		if (myXmlHttpRequest.responseText == "true") {
			f_account = false;
			document.getElementById("label_username").innerHTML = "Username already exist";
			document.getElementById('label_username').style.color= "red ";//字体颜色
		} else {
			f_account = true;
			document.getElementById("label_username").innerHTML = "";
		}
	}
}

function Check() {
	if ($("#username").val() == "") {
		alert("Username needed.");
		return false;
	} else {
		var re = /^[a-zA-z]\w{3,15}$/;
		if (!re.test($("#username").val())) {
			alert("Invaild Username");
			return false;
		}
	}
	if ($("#password").val() == "") {
		alert("Password needed.");
		return false;
	} else {
		var str = $("#password").val();
		if (str == null || str.length < 6) {
			alert("Password too short.");
			return false;
		}
		var reg = /^[A-Za-z0-9]{6,20}$/;
		if (!reg.test(str)) {
			alert("Invaild Password.");
			return false;
		}
	}
	if ($("#phone").val() == "") {
		alert("Phone needed.");
		return false;
	} else {
		var re = /^1\d{10}$/;
		if (!re.test($("#phone").val())) {
			alert("Invaild Phone");
			return false;
		}
	}
	if ($("#email").val() == "") {
		alert("Email needed.");
		return false;
	} else {
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test($("#email").val())) {
			alert("Invalid E-mail.");
			return fasle;
		}
	}
	if ($("#city").val() == "") {
		alert("City Name needed.");
		return false;
	} else {
		var re = /\D+/;
		if (!re.test($("#city").val())) {
			alert("Invaild City Name");
			return false;
		}
	}
	if ($("#street").val() == "") {
		alert("Street Name needed.");
		return false;
	} else {
		var re = /\D+/;
		if (!re.test($("#street").val())) {
			alert("Invaild Street Name");
			return false;
		}
	}
	if ($("#apartment").val() == "") {
		alert("Apt Number needed.");
		return false;
	} else {
		var re = /\D+/;
		if (!re.test($("#apartment").val())) {
			alert("Invaild Apartment Number");
			return false;
		}
	}
	if (f_account) {
		$("#register_form").submit();
	}
	return ture;
}