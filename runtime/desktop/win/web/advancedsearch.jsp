<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp" pageEncoding="UTF-8"%>
<%@taglib uri="regain-search.tld" prefix="search" %>

<html>
    <head>
        <title>DaimlerFileCrawler - <search:msg key="advancedSearch"/></title>
        
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <link href="css/regain.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>        
    </head>

    <body>
        
        <search:check noIndexUrl="noindex.jsp"/>

    <%-- Navbar Section 
    ========================================================================--%>    
        <div class="horizontal-top-header-section">    
            <%@include file="header.jsp" %>
        </div>    

        <%-- Middle Header Section 
    ========================================================================--%>
        <div class="horizontal--middle-header-section">    
            <section id="middle-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1><search:msg key="search"/></h1>
                        </div>
                    </div>
                </div>    
            </section>
        </div>                
                    
    <%-- AdvancedSearch Content Section 
    ========================================================================--%>  
        <section id="Content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form name="search" action="search.jsp" method="get">
                            <br/>
                            <table>
                                <tr>
                                    <td><search:msg key="searchFor"/>:</td>
                                    <td><input class="form-control" name="query" size="40"/></td>
                                </tr>
                                <tr>
                                    <td><search:msg key="fileExtension"/>:</td>
                                    <td><search:input_fieldlist field="mimetype" allMsg="{msg:allItem}"/></td>
                                </tr>
                                <tr>
                                    <td></td><td><search:input_submit text="{msg:search}"/></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>    
        </section>                       

    <%-- Footer Section 
    ========================================================================--%>                    
        <div class="horizontal-footer-section">    
            <%@include file="footer.jsp" %>
        </div>    
    
    <%-- JavaScript Section 
    ========================================================================--%>    
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        
    </body>
</html>