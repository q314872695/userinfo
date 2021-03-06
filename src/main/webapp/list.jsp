<%@ page import="cn.hutool.db.Entity" %>
<%@ page import="cn.hutool.db.PageResult" %>
<%@ page import="cn.hutool.core.lang.Console" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户信息管理系统</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
    <script>
        function deleteUser(id) {
            if (confirm("您确定要删除吗？")) {
                location.href = "delUserServlet?id=" + id;
            }
        }

        $(function () {
            $("#delSelected").click(function () {
                if (confirm("您确定要删除吗？")) {
                    var flag = false;
                    $(":checked").each(function () {
                        if ($(this).prop("checked")) {
                            flag = true;
                            return false;
                        }
                    });
                    if (flag) {
                        $("#form").submit();
                    }
                }
            });
            $("#firstCb").click(function () {
                $(":checkbox[name='uid']").each(function (index, element) {
                    $(element).prop("checked", $("#firstCb").prop("checked"));
                })
            });
        })
    </script>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">用户信息列表</h3>
    <div style="float: left">
        <form class="form-inline" action="findUserByPageServlet" method="post">
            <div class="form-group">
                <label for="exampleInputName2">姓名</label>
                <input type="text" name="name" value="${requestScope.condition['name']}" class="form-control" id="exampleInputName2">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail2">籍贯</label>
                <input type="text" name="address" value="${requestScope.condition['address']}" class="form-control" id="exampleInputEmail2">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail3">邮箱</label>
                <input type="text" name="email" value="${requestScope.condition['email']}" class="form-control" id="exampleInputEmail3">
            </div>
            <button type="submit" class="btn btn-default">查询</button>
        </form>
    </div>
    <div style="float: right;margin: 5px">
        <a class="btn btn-primary" href="add.jsp">添加联系人</a>
        <a class="btn btn-primary" href="javascript:void(0);" id="delSelected">删除选中</a>
    </div>
    <form id="form" action="delSelectedServlet" method="post">
        <table border="1" class="table table-bordered table-hover">
            <tr class="success">
                <th><input type="checkbox" id="firstCb"></th>
                <th>编号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>籍贯</th>
                <th>QQ</th>
                <th>邮箱</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${requestScope.pb}" var="user" varStatus="s">
                <tr>
                    <th><input type="checkbox" value="${user.id}" name="uid"></th>
                    <td>${s.count}</td>
                    <td>${user.name}</td>
                    <td>${user.gender}</td>
                    <td>${user.age}</td>
                    <td>${user.address}</td>
                    <td>${user.qq}</td>
                    <td>${user.email}</td>
                    <td>
                        <a class="btn btn-default btn-sm" href="findUserServlet?id=${user.id}">修改</a>&nbsp;
                        <a class="btn btn-default btn-sm" href="javascript:deleteUser(${user.id});">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
    <div>

        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${pb.isFirst()}">
                    <li class="disabled">
                        <a href="#" aria-label="Previous">
                </c:if>
                <c:if test="${!pb.isFirst()}">
                    <li>
                        <a href="findUserByPageServlet?currentPage=${pb.getPage()-1}&rows=10&name=${condition.name}&address=${condition.address}&email=${condition.email}" aria-label="Previous">
                </c:if>
                            <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <%--分页逻辑，最多显示10页--%>
                <%
                    PageResult<Entity> pb= (PageResult<Entity>) request.getAttribute("pb");
                    int begin=0;
                    int end=pb.getTotalPage();
                    if (pb.getTotalPage() >= 10) {
                        begin = pb.getPage() - 5;
                        end = pb.getPage() + 4;
                        if (begin < 0) {
                            begin = 0;
                            end = 10 + begin;
                        }
                        if (end > pb.getTotalPage()) {
                            end = pb.getTotalPage();
                            begin = end - 10;
                        }
                    }
                    request.setAttribute("begin",begin);
                    // end最小为1，否则c:forEach报错
                    request.setAttribute("end", Math.max(end, 1));
                %>

                <c:forEach begin="${begin}" end="${end-1}" var="i">
                    <c:if test="${requestScope.pb.getPage()==i}">
                        <li class="active"><a href="findUserByPageServlet?currentPage=${i}&rows=10&name=${condition.name}&address=${condition.address}&email=${condition.email}">${i+1}</a></li>
                    </c:if>
                    <c:if test="${requestScope.pb.getPage()!=i}">
                        <li><a href="findUserByPageServlet?currentPage=${i}&rows=10&name=${condition.name}&address=${condition.address}&email=${condition.email}">${i+1}</a></li>
                    </c:if>
                </c:forEach>


                <c:if test="${pb.isLast()}">
                    <li class="disabled">
                        <a href="#" aria-label="Next">
                </c:if>
                <c:if test="${!pb.isLast()}">
                    <li>
                        <a href="findUserByPageServlet?currentPage=${requestScope.pb.getPage()+1}&rows=10&name=${condition.name}&address=${condition.address}&email=${condition.email}" aria-label="Next">
                </c:if>
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <span style="font-size: 25px;margin-left: 10px">共${pb.getTotal()}条记录，共${pb.getTotalPage()}页</span>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
