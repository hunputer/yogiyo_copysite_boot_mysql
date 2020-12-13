<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
	var path = '${path}';
	alert("${msg}");
	if(path != 'home'){
		location.href="${path}";
	}else{
		location.href="${pageContext.request.contextPath}/";
	}
</script>
</body>
</html>