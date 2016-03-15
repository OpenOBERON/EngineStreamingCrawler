<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp"%>

<html>
    <head>
        <title>DaimlerFileCrawler - <search:msg key="preferences"/></title>
        
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href="css/regain.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    </head>

    <body>
        
    <%-- Configuration Header Section 
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
                            <h1 id="middleHeaderID"><search:msg key="preferences"/></h1>
                        </div>
                    </div>
                </div>    
            </section>
        </div>                
                    
    <%-- Configuration Content Section 
    ========================================================================--%>    
        <section id="ConfigContent">
            <div class="container">
                <div class="row">    
                    <config:form action="config.jsp">
                        <br/>
                        <div class="col-md-12">
                            <div class="interval-configuration">
                                <p>
                                    <h3><search:msg key="indexingInterval"/>:</h3> 
                                    <config:interval class="form-control"/>
                                </p>
                            </div>    
                        </div>
                        <div class="col-md-5">    
                            <p>
                                <h3><search:msg key="directories"/></h3>
                                <config:editlist name="dirlist" class="form-control"/>
                            </p>
                        </div>
                        <div class="col-md-5 col-md-offset-1">    
                            <p>
                                <h3><search:msg key="excludedDirectories"/></h3>
                                <config:editlist name="dirblacklist" class="form-control"/>
                            </p>
                        </div>   
                        <div class="col-md-12">    
                            <p>
                            <br>
                                <search:input_submit text="{msg:savePreferences}"/>
                            </p>
                        </div>    
                    </config:form>
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