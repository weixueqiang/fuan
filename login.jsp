<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<script src="js/dingtalk.js"></script>
<script src="js/index.js"></script>
<script src="js/jquery/jquery-1.7.2.min.js"></script>
<script src="//g.alicdn.com/dingding/dingtalk-jsapi/2.0.8/dingtalk.open.js"></script>
<script src="http://g.alicdn.com/dingding/dinglogin/0.0.5/ddLogin.js"></script>
<body>
<h2>Login</h2>
<div id="login_container"></div>
<%--<a href="/admin/user/getSubDeptIdList">渣渣</a>--%>
<%--<form action="/admin/user/login" method="post">--%>
<%--<input type="text" name="userName" value="zhazha">--%>
<%--<input type="text" name="password" value="123456">--%>
<%--<input type="submit" value="登录">--%>
<%--</form>--%>
<a href="https://oapi.dingtalk.com/connect/oauth2/sns_authorize?appid=dingoanajtecoqjrwzpc70&response_type=code&scope=snsapi_login&state=STATE&redirect_uri=http://192.168.100.206:8081/admin/user/callback">登录</a>
<script>
    $(function () {

    });

    var obj = DDLogin({
        id: "login_container",
        goto: "https%3a%2f%2foapi.dingtalk.com%2fconnect%2foauth2%2fsns_authorize%3fappid%3ddingoanajtecoqjrwzpc70%26response_type%3dcode%26scope%3dsnsapi_login%26state%3dSTATE%26redirect_uri%3dhttp%3a%2f%2f192.168.100.206%3a8081%2fadmin%2fuser%2fcallback",
        style: "border:none;background-color:#FFFFFF;",
        width: "365",
        height: "400"
    });

    var hanndleMessage = function (event) {
        var origin = event.origin;
        console.log("origin", event.origin);
        if (origin == "https://login.dingtalk.com") { //判断是否来自ddLogin扫码事件。
            var loginTmpCode = event.data; //拿到loginTmpCode后就可以在这里构造跳转链接进行跳转了
            console.log("loginTmpCode", loginTmpCode);
            window.location.href = "https://oapi.dingtalk.com/connect/oauth2/sns_authorize?appid=3ddingoanajtecoqjrwzpc70&response_type=code&scope=snsapi_login&state=STATE&redirect_uri=http://192.168.100.206:8081/admin/user/callback&loginTmpCode=" + loginTmpCode
        }
    };
    if (typeof window.addEventListener != 'undefined') {
        window.addEventListener('message', hanndleMessage, false);
    } else if (typeof window.attachEvent != 'undefined') {
        window.attachEvent('onmessage', hanndleMessage);
    }
</script>
</body>
</html>
