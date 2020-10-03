<%--
  Created by IntelliJ IDEA.
  User: 20254
  Date: 2020/10/3
  Time: 15:47
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
<form action="/upd" method="post">
    <table border="1px">
        <tr>
            <td id="yi" colspan="2" align="center"><h2 >学员信息</h2></td>
        </tr>
        <input type="hidden" value="${cha.sid }" name="sid">
        <tr>
            <td>学员姓名</td>
            <td><input type="text" name="sname" value="${cha.sname }"/></td>
        </tr>
        <tr>
            <td>学员性别</td>
            <td><input type="text" name="sgender" value="${cha.sgender }"/></td>
        </tr>
        <tr>
            <td>学员年龄</td>
            <td><input type="text" name="sage" value="${cha.sage }"/></td>
        </tr>
        <tr>
            <td>家庭地址</td>
            <td><input type="text" name="saddress" value="${cha.saddress }"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="semail" value="${cha.semail }"/></td>
        </tr>
        <tr>
            <td id="er" colspan="2" align="center"><input type="submit" value="修改"/>&nbsp;<input type="reset" value="重置" /></td>
        </tr>
    </table>
</form>
<script src="/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    $("form").submit(function(){
        var sname=$("[name='sname']").val();
        if(sname==""){
            alert("学生姓名不能为空");
            return false;
        }
        var sgender=$("[name='sgender']").val();
        if(sgender==""){
            alert("学生性别不能为空");
            return false;
        }
        var sage=$("[name='sage']").val();
        if(sage==""){
            alert("学生年龄不能为空");
            return false;
        }
        return true;
    })
    $("td:odd").css("background-color","#58FFCB");
    $("#er").css("background-color","#FFFFFF");
    $("#yi").css("background-color","#58FFCB");
</script>
</body>
</html>
