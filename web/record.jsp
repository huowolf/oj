<%--
  Created by IntelliJ IDEA.
  User: xanarry
  Date: 17-12-28
  Time: 上午10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
    <title>提交记录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container" style="margin-top: 70px">
    <br>
    <form>
        <div class="input-group" style="padding-bottom:15px;">
            <span class="input-group-addon">用户名:</span>
            <input name="user" type="text" value="" class="form-control">
            <span class="input-group-addon">题号:</span>
            <input name="problem" type="text" value="" class="form-control">

            <span class="input-group-addon">评测结果:</span>
            <select name="status" class="form-control">
                <option value="">All</option>

                <option value="Accepted">Accepted</option>

                <option value="Presentation Error">Presentation Error</option>

                <option value="Time Limit Exceeded">Time Limit Exceeded</option>

                <option value="Memory Limit Exceeded">Memory Limit Exceeded</option>

                <option value="Wrong Answer">Wrong Answer</option>

                <option value="Runtime Error">Runtime Error</option>

                <option value="Output Limit Exceeded">Output Limit Exceeded</option>

                <option value="Compile Error">Compile Error</option>

                <option value="System Error">System Error</option>

            </select>

            <span class="input-group-addon">语言:</span>
            <select name="language" class="form-control">
                <option value="">All</option>

                <option value="C">C</option>

                <option value="C++">C++</option>

                <option value="Java">Java</option>

                <option value="Python2.7">Python2.7</option>

                <option value="go">go</option>

            </select>
            <span class="input-group-btn">
        <button class="btn btn-default">查询</button>
      </span>
        </div>
    </form>

    <div class="card">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>提交ID</th>
                <th>用户</th>
                <th>题号</th>
                <th>耗时(ms)</th>
                <th>内存(KB)</th>
                <th>语言</th>
                <th>代码长度(字节)</th>
                <th>提交时间</th>
                <th class="text-center">结果</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach begin="0" end="50" step="1">
                <tr>
                    <td>1</td>
                    <td>xanary</td>
                    <td>1000</td>
                    <td>876</td>
                    <td>3425</td>
                    <td>C++</td>
                    <td>3235</td>
                    <td>2017-12-23 12:12:12</td>
                    <td class="text-center">
                        <span class="badge badge-success">accept</span>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <br>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </nav>
    <jsp:include page="footer.jsp"/>
</body>
</html>
