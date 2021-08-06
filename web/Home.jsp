<%-- 
    Document   : Home
    Created on : May 22, 2021, 2:13:07 PM
    Author     : Vuong Van Truong
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/right.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="left">     
                    <div class="title">
                        ${top1.title}
                    </div>
                    <div class="image">
                        <img src="${top1.image}" alt=""/>
                    </div>
                    <div class="text">
                        ${top1.description}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                        <span class="by">
                           By ${top1.author} | ${top1.dateConvert}  
                        </span>
                       
                    </div>
                    
            </div>
                   </div>
                <jsp:include page="Right.jsp"/>
        </div>
                <jsp:include page="Footer.jsp"/>
    </body>
</html>
