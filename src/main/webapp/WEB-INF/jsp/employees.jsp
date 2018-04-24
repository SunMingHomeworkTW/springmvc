<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/js/jquery-3.0.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/table.css">
    <title>员工列表</title>
</head>
<style>
    table{width:100%;height:50px;line-height:50px;text-align:center;border-collapse:collapse;font-family:NSimSun;}
    thead{color:white;background-color:black;}
    th,td{border:1px solid black;}
    .tr0{background-color:#ebebeb;}
</style>
<body>

<div><table id="list">
<thead>
     <tr>
     <th>编号</th>
     <th>姓名</th>
     <th>年龄</th>
     <th>性别</th>
     </tr></thead>
<tbody>
     <c:forEach items="${list}" var="item" varStatus="status">
             <tr class="tr${item.id%2}"><td>${item.id}</td>
             <td>${item.name}</td>
             <td>${item.age}</td>
             <td>${item.gender}</td></tr>
         </c:forEach><tbody>
     </table>
</div>
</body>
</html>
