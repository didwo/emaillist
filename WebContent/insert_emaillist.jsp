<%@page import="com.bit2015.emaillist.dao.EmailListDao"%>
<%@page import="com.bit2015.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    
    	//post 방식의 데이터를 받을때 엔코딩 처리(한글처리)
    	request.setCharacterEncoding("utf-8");
    
    	String firstName = request.getParameter("fn");
        String lastName = request.getParameter("ln");
        String email = request.getParameter("email");
        
        EmailListVo vo = new EmailListVo();
        vo.setFirstName(firstName);
        vo.setLastName(lastName);
        vo.setEmail(email);
        
        EmailListDao dao = new EmailListDao();
        dao.insert(vo);
        
        response.sendRedirect("/emaillist");
    %>
        
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>