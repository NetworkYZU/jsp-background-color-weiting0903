<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%        
        String color=request.getParameter("color");
        String [] colors=new String[]{"red", "green", "black", "purple", "white", "blue"};
        if(color==null){
            int index=(int)Math.floor(Math.random()*colors.length);
            color=colors[index];
        }
    %>
    <body bgcolor="<%=color%>">
        <form>
            Color: <input type="color" name="color"/>
            <input type="submit">
        </form>
    </body>
</html>
