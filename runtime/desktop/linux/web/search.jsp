<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp" pageEncoding="UTF-8" %>
<%@taglib uri="regain-search.tld" prefix="search" %>

<html>
    <head>
          <title>DaimlerFileCrawler - <search:msg key="searchFor"/> <search:stats_query/></title>
          <meta http-equiv="content-type" content="text/html; charset=UTF-8">
          
          <link href="css/regain.css" rel="stylesheet" type="text/css">
          <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
          <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
          <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>          
    </head>

    <body>
        <search:check noIndexUrl="noindex.jsp" noQueryUrl="searchinput.jsp"/>

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

    <%-- Search Content Section 
    ========================================================================--%>    
        <section id="searchContent">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <table class="top"><tr>
                            <td class="searchTop">
                                <%@include file="search_form.jsp" %>
                            </td>
                        </tr></table>

                        <div class="search-content">            
                            <table class="content">
                                <tr class="headline">
                                <td>
                                    <search:msg key="resultsFor"/> <b><search:stats_query/></b>
                                </td>
                                <td class="headlineRight">
                                    <search:msg key="results.part1"/> <b><search:stats_from/></b>-<b><search:stats_to/></b>
                                    <search:msg key="results.part2"/> <b><search:stats_total/></b>
                                    <search:msg key="results.part3"/> <b><search:stats_numdocs/></b> <search:msg key="results.part4"/>
                                    (<b><search:stats_searchtime/></b> <search:msg key="seconds"/>)
                                    &nbsp;
                                </td>
                                </tr>
                                <tr>
                                    <td colspan="2"> <br/> </td>
                                </tr>
                                <search:list msgNoResults="<tr><td colspan='2'>{msg:noResultsFound}<br/><br/></td></tr>">
                                  <tr><td colspan="2">
                                    <search:hit_typeicon imgpath="img/ext"/> <search:hit_link/>
                                        <span class="hitDetails">
                                            (<search:msg key="relevance"/>: <search:hit_score/><search:hit_sortContent/>)<br/>
                                            <search:hit_field field="summary"/><br/>
                                            <search:hit_content/>
                                            <search:hit_path after="" createLinks="true"/><search:hit_field field="mimetype"/>&nbsp;
                                            <span class="hitInfo"><search:hit_url beautified="true"/> - <search:hit_size/> - <search:hit_lastModified/></span>
                                            <search:hit_cached/><br/><br/>
                                        </span>
                                    </td></tr>
                                </search:list>
                            </table>
                        </div>    

                        <div class="container">            
                            <p class="navigation">
                                <search:msg key="resultPage"/>:
                                <search:navigation
                                    targetPage="search.jsp"
                                    msgBack="<img src='img/back.gif' title='{msg:back}' border='0'/>"
                                    msgForward="<img src='img/forward.gif' title='{msg:forward}' border='0'/>"/>
                            </p>
                        </div>    
                        <br/>
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
        <script type="text/javascript" language="JavaScript">
            <!--
            function toggleMe(a){
              var e=document.getElementById(a);
              if(!e)return true;
              if(e.style.display=="none"){
                e.style.display="block"
              } else {
                e.style.display="none"
              }
              return true;
            }
            //-->
        </script>
    </body>
</html>
