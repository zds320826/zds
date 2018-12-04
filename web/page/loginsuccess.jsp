<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2018/11/27
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //String uname1 =(String) session.getAttribute("uname");
    String id = session.getId();
    Cookie[] cookies = request.getCookies();
    //key-value
    String uname=" ";
    for (Cookie cookie:cookies){
        if (cookie.getName().equals("username")){
            uname=cookie.getValue();
        }
    }
    //清除session
    //session.invalidate();
    //session.setMaxInactiveInterval(60);
%>
欢迎<%=uname%>
</body>
</html>
