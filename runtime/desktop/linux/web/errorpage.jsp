<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="regain-search.tld" prefix="search" %>

<html>
    <head>
        <title><search:msg key="errorSearchingFor"/> <search:stats_query/></title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        
        <link href="css/regain.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <status:autoupdate_meta/>
    </head>

    <body>
        
    <%-- Navbar Section 
    ========================================================================--%>    
        <%@include file="header.jsp" %>

        <%-- Middle Header Section 
    ========================================================================--%>
        <div class="horizontal--middle-header-section">
            <section id="middle-headerSearch">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1><search:msg key="error"/></h1>
                        </div>
                    </div>
                </div>    
            </section>
        </div>            
                    
    <%-- Errorpage Content Section 
    ========================================================================--%>     
        <section id="Content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>
                            <search:msg key="errorSearchingFor"/> <b><search:stats_query/></b>
                            <br>
                        </p>    
                    </div>                    
                    <div class="col-md-12">
                        <p>
                            <search:msg key="error.checkInput"/>
                            <br>
                        </p>
                    </div>
                    <div class="col-md-12">
                        <p>
                            <search:msg key="errorMessage"/>: <code><search:error_message/></code>
                                <%-- Add the stack trace as hidden text --%>
                                <div style="display:none; color:grey; " id="stacktrace">
                                Stacktrace:
                                <pre><search:msg key="errorMessage"/>:<search:error_stacktrace/></pre>
                                </div>
                                <small><a href="#" onclick="document.getElementById('stacktrace').style.display=''; return false;"><search:msg key="error.showDetails"/></a></small>
                        </p>    
                    </div>
                    <div class="col-md-12">
                        <p>
                            <search:msg key="error.moreInfo"/><br>
                        </p>                      
                    </div>
                    <div class="col-md-12">
                        <%@include file="search_form.jsp" %>
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
