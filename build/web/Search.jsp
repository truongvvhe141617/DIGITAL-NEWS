<%-- 
    Document   : Search
    Created on : May 22, 2021, 3:04:52 PM
    Author     : Vuong Van Truong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="left">
                        
                    
                    <c:forEach items="${listS}" var="o"  varStatus="loop">
                        
<!--                    
                        <div class="resuslt" style="background-color: aliceblue; font-family: sans-serif">
                          <p> Keyword "${txtSearch}" - ${endPage} results found </p>
                        <p> Page ${index} : ${count-3} - ${count-1} of ${endPage} results </p>
                    </div>  -->
               
                <ul>
                    <li>
                        <div class="search-new">
                            <div class="title">
                                <c:out value="${listCount[loop.index]}"/>-
                                <a href="detail?id=${o.id}">${o.title}</a>
                            </div>
                            <div class="image_search">
                                <img src="${o.image}" alt=""/>
                            </div> 
                            <div class="text_search">
                                ${o.shortDes}
                            </div>
                        </div>
                    </li>
                </ul>
                        </c:forEach>
                <div class="paging">
                    <c:if test="${endPage != 1}">
                        
             
                    <c:forEach begin="1" end="${endPage}" var="i">
                        <a class="${i==index?"active":""}"href="search?index=${i}&txtSearch=${txtSearch}"> ${i} </a>
                            </c:forEach>
                            </c:if>
                </div>
            </div>
                    </div>
                <jsp:include page="Right.jsp"/>
        </div>
            <jsp:include page="Footer.jsp"/>
             </div>
    </body>
</html>
