<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp"%>

<html>
    <head>
        <title>DaimlerFileCrawler - <search:msg key="status"/></title>
        
        <link href="css/regain.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
        <status:autoupdate_meta/>
    </head>

    <body>
        
    <%-- Status Header Section 
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
                            <h1><search:msg key="status"/></h1>
                        </div>
                    </div>
                </div>    
            </section>
        </div>                
                    
    <%-- Status Content Section 
    ========================================================================--%>
        <section id="statusContent">
            <div class="status-content">
                <div class="status-splitter-top">
                    <div class="status-splitter-left">
                        <div class="status-splitter-left-left">
                            <h4><search:msg key="autoUpdate"/></h4>
                            <p><status:autoupdate_form url="status.jsp"
                                msgAutoupdate="{msg:autoupdate}"
                                msgEnable="{msg:enable}"
                                msgDisable="{msg:disable}"/>
                            </p>      
                        </div>
                        <div class="status-splitter-left-right">             
                            <h4><search:msg key="currentIndex"/></h4>
                            <p><status:indexupdatecontrol url="status.jsp"
                                msgBefore="{msg:indexUpdateControl}"
                                msgStart="{msg:start}"
                                msgPause="{msg:pause}"
                                msgResume="{msg:resume}"/></p>
                            <p><status:currentindex/></p>
                        </div>    
                    </div>
                    <div class="status-splitter-right">    
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4><search:msg key="timing"/></h4>
                                </div>
                                <div class="panel-body">
                                    <pre><status:profiler/></pre>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
                <div class="status-splitter-bottom">
                    <div class="status-splitter-left">
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4><search:msg key="runningIndexUpdate"/></h4>
                                </div>
                                <div class="panel-body">    
                                    <p><status:indexupdate/></p>
                                </div>
                            </div>    
                        </div>            
                    </div>   
                    <div class="status-splitter-right">                                    
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4><search:msg key="lastLogMessages"/></h4>
                                </div>
                                <div class="panel-body">    
                                    <pre><status:log/></pre>
                                </div>
                            </div>    
                        </div>
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