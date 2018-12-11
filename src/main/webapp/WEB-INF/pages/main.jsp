<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging with Log4Js</title>
<script src="js/log4javascript.js" type="text/javascript"></script>
<script>

function startLog(){	
	var log = log4javascript.getDefaultLogger();
	var ajaxAppender = new log4javascript.AjaxAppender("getLogs");
	ajaxAppender.addHeader("Content-Type", "application/json;charset=utf-8");
	var jsonLayout = new log4javascript.JsonLayout();
	ajaxAppender.setLayout(jsonLayout);
	log.addAppender(ajaxAppender);
	log.error("Hello World");
}

</script>
</head>
<body>
	<h1>Hi...</h1>
	<button onclick="startLog();">Start</button>

</body>
</html>