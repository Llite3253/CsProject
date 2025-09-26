<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form class="container" action="/product/test" method="post" enctype="multipart/form-data">
        <input type="text" name="username">
        <input type="file" name="file">
        <input type="submit">
    </form>
    <c:if test="${!empty upPath }">
        <img src="/img/1.png">
    </c:if>
</body>
</html>
