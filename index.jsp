<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<script src="js/dingtalk.js"></script>
<script src="js/index.js"></script>
<script src="js/jquery/jquery-1.7.2.min.js"></script>
<body>
<a href="${pageContext.request.contextPath}/student.jsp">学生页面</a><br/>
<button id="btn">免验证登录</button>
<div>
    <a href="${pageContext.request.contextPath}/admin/user/info">获取用户信息</a>
    <a href="${pageContext.request.contextPath}/admin/user/logout">退出</a>
    <a href="${pageContext.request.contextPath}/admin/user/check">检测</a>
</div>
<hr>
<div>
    <h2>工作记录</h2>
    <a href="${pageContext.request.contextPath}/admin/bizTeachAndSearchActive/save?year=2017&term=2017LAST&subject=1&activeTime=2018-01-01&leader=14570704071178091&otherJoiner=yaya, heihei, hoho&content=content112233&detailRecord=dsadasdasdas&joiner=14570704071178091&joiner=6950545537625943">保存</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachAndSearchActive/delete?id=5befd9a83ea6b6132cdbc37e">删除</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachAndSearchActive/5befd9a83ea6b6132cdbc37e">读取</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachAndSearchActive/list?pageNum=0&pageSize=10">列表</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachAndSearchActive/basic">基础</a><br>
</div>
<hr>
<hr>
<div>
    <h2>工作总结</h2>
    <a href="${pageContext.request.contextPath}/biz/schoolsummary/save?departmentId=12&title=title&date=2018-01-01&content=content">保存</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolsummary/delete/5befdb3a3ea6c87ecdeeed98">删除</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolsummary/5befdb3a3ea6c87ecdeeed98">读取</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolsummary/list?pageNum=0&pageSize=10&departmentId=12">列表</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolsummary/basic">基础</a><br>
</div>
<hr>
<hr>
<div>
    <h2>工作计划</h2>
    <a href="${pageContext.request.contextPath}/biz/schoolplan/save?departmentId=12&title=title&date=2018-01-01&content=content">保存</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolplan/delete/5bef8e363ea6f2edaf54b7b2">删除</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolplan/5bef8e363ea6f2edaf54b7b2">读取</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolplan/list?pageNum=0&pageSize=10&departmentId=12">列表</a><br>
    <a href="${pageContext.request.contextPath}/biz/schoolplan/basic">基础</a><br>
</div>
<hr>
<hr>
<div>
    <h2>复习进度</h2>
    <a href="${pageContext.request.contextPath}/admin/bizTeachEndTermProgressPlan/save?yearId=2017&termId=2017LAST&classId=high11&subjectId=1&date=2018-01-01 12:23:32&gradeId=grade1&content=123456798&note=987654321000">保存</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachEndTermProgressPlan/delete?id=5bef735c3ea6d1b3b042c269">删除</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachEndTermProgressPlan/5bef735c3ea6d1b3b042c269">读取</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachEndTermProgressPlan/list?pageNum=0&pageSize=10">列表</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizTeachEndTermProgressPlan/basic">基础</a><br>
</div>
<hr>
<div>
    <h2>教学计划复习计划</h2>
    <a href="${pageContext.request.contextPath}/admin/bizSchoolTeachPlan/save?yearId=2018&termId=2018LAST&classId=high11&subjectId=1&isEndOfTerm=true&situation=123&target=456&action=789&content=123456789&grade=grade1">保存</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizSchoolTeachPlan/delete?id=5bee74b83ea6f8dc80a97a91">删除</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizSchoolTeachPlan/5bee74b83ea6f8dc80a97a91">读取</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizSchoolTeachPlan/list?pageNum=0&pageSize=10">列表</a><br>
    <a href="${pageContext.request.contextPath}/admin/bizSchoolTeachPlan/basic">基础</a><br>
</div>
<hr>

</body>

<script>
    $("#btn").click(function () {
        DingTalkPC.runtime.permission.requestAuthCode({
            corpId: "ding8fad2d9e10a4b6a935c2f4657eb6378f", //企业ID
            onSuccess: function (result) {
                console.log(result.code);
                $.get("${pageContext.request.contextPath}/user/login", {
                    code: result.code,
                    corpId: "ding0ea33abef4cff958"
                });
            },
            onFail: function (err) {
                console.log(err);
            }
        })
    });
</script>

</html>
