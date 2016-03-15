<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp"%>

<html>
    <head>
        <title>DaimlerFileCrawler - <search:msg key="welcome"/></title>
        
        <link href="css/regain.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    </head>

    <body>

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
                            <h1><search:msg key="welcome"/></h1>
                        </div>
                    </div>
                </div>    
            </section>
        </div>                
                    
    <%-- Welcome Content Section 
    ========================================================================--%>    
        <section id="Content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="welcomeContentHeader">Willkommen beim DaimlerFileCrawler</h2>

                        <p class="welcomeContentText">Nach dem Start erscheint das DFC-Symbol rechts unten in der Taskleiste.</p>

                        <p class="welcomeContentText">Um die Suchseite oder die Einstellungsseite zu &ouml;ffnen oder den 
                            DaimlerFileCrawler zu beenden, klicken Sie mit der rechten Maustaste 
                            auf das DaimlerFileCrawler-Symbol. Es &ouml;ffnet sich ein Men&uuml; in
                            welchem Sie die gew&uuml;nschte Aktion ausw&auml;hlen k&ouml;nnen.</p>

                        <p class="welcomeContentText">Bevor Sie etwas suchen k&ouml;nnen, muss zuerst ein Suchindex 
                            erstellt werden. Bitte geben Sie hierf&uuml;r bei der 
                            Einstellungsseite an, welche Verzeichnisse und Webseiten Sie in den 
                            Suchindex aufnehmen wollen.</p>
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