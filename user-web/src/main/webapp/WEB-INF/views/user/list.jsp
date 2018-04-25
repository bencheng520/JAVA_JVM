<%--
  Created by IntelliJ IDEA.
  User: 006
  Date: 2017/7/10
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>用户列表</title>
</head>
<body>

${hello}
<table id="contentTable" class="table table-striped table-bordered table-condensed" border="1">
    <thead>
    <tr>
        <th>姓名</th><th>部门</th><th>岗位职级</th><th>调整原因</th><th>申请时间</th>
            <th>操作</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.userName}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
            <td></td>
                <td>
                <%--<a href="${ctx}/user/form?id=${user.id}">详情</a>--%>
                <a href="${ctx}/user/add?id=${user.id}">修改</a>
                <a href="${ctx}/user/delete?id=${user.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
