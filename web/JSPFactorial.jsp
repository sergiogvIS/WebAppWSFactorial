<%-- 
    Document   : JSPFactorial
    Created on : 27-feb-2018, 10:17:00
    Author     : entrar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>    <%-- start web service invocation --%><hr/>
    <%
    try {
	org.factorial.WSFactorial_Service service = new org.factorial.WSFactorial_Service();
	org.factorial.WSFactorial port = service.getWSFactorialPort();
	 // TODO initialize WS operation arguments here
	int arg0 = 5;
	// TODO process result here
	long result = port.devuelveFactorial(arg0);
	out.println("El factorial de 5 es  = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

</html>
