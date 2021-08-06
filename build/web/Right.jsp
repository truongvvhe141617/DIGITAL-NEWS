<%-- 
    Document   : Right
    Created on : May 22, 2021, 2:22:24 PM
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
        <div class="right">
            <div class="main-right">
                <div class="newst">
                    <div class="titleNews">
                        <span>Digital News</span>
                    </div>
                    <div class="contentNews">
                        ${top1.shortDes}
                    </div>
                </div>
               
                    <div class="newst">
                        <div class="titleNews">
                            Search
                        </div>
                        <form action="search" method="post">
                            <input class="searchBox" type="text" name="txtSearch" value="${txtSearch}">
                            <input class="searchButton" type="submit" name="btnGo" value="Go">

                        </form>
                    </div>
                    <div class="newst">
                        <div class="titleNews">
                            <span>Last Articles</span>
                        </div>
                        <c:forEach items="${top5}" var="o">
                            <div class="lastArticles">

                                <a class="${oo==o.id?"active":" "}" href="detail?id=${o.id}">${o.title}</a>
                            </div>   
                        </c:forEach>

                    </div>
                </div>
            </div>
        
    </body>
</html>
