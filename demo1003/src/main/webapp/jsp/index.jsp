<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/3
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px" align="center">
    <tr>
        <td colspan="7" id="yi"><h2 align="center">学员信息列表</h2></td>
    </tr>
    <tr  align="center">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>地址</td>
        <td>email</td>
    </tr>
    <c:forEach items="${list }" var="Stu">
        <tr>
            <td><a href="/cha?sid=${Stu.sid }">${Stu.sid }</a></td>
            <td>${ Stu.sname }</td>
            <td>${Stu.sgender }</td>
            <td>${Stu.sage }</td>
            <td>${Stu.saddress }</td>
            <td>${Stu.semail }</td>
        </tr>
    </c:forEach>
</table>
<span style="color: red">${upd1}</span>
<script src="/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    $(function() {
        $("tr:odd").css("background-color","#58FFCB");
        $("#yi").css("background-color","#FFFFFF");
    })
</script>
</body>
</html>
