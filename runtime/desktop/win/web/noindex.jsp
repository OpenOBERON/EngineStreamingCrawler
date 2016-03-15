<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp"%>

<html>
    <head>
        <title>DaimlerFileCrawler - <search:msg key="noIndex"/></title>
        
        <link href="css/regain.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    </head>

    <body>
        
    <%-- NoIndex Header Section 
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
                            <h1><search:msg key="noIndex"/></h1>
                        </div>
                    </div>
                </div>    
            </section>
        </div>                

    <%-- NoIndex Content Section 
    ========================================================================--%>    
        <section id="Content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4><search:msg key="noIndex"/></h4>
                    </div>
                    <div class="col-md-12">
                        <p><search:msg key="noIndex.help.config"/></p>
                        <p><search:msg key="noIndex.help.status"/></p>
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
    <script src="regain.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    
    </body>
</html>