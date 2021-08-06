<%-- 
    Document   : Detail
    Created on : May 22, 2021, 3:22:21 PM
    Author     : Vuong Van Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                    <div class="title">
                        ${one.title}
                    </div>
                    <div class="image">
                        <img src="${one.image}" alt=""/>
                        
                    </div>
                    <div class="text">
                        ${one.description}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                        By ${one.author} | ${one.timePost}
                    </div>
                  
                </div>
                  <jsp:include page="Right.jsp"/>                
            </div>
                 <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
