<%@page pageEncoding="UTF-8" %>
<%@include file="/jsp/init.jsp" %>

<!DOCTYPE HTML>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:importAttribute name="title" scope="request"/>
<tiles:importAttribute name="details" scope="request"/>
<tiles:importAttribute name="removeSignin" scope="request" ignore="true"/>

<html>
<head>
    <base href="${requestScope['site.baseurl']}/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="WiseMapping">
    <meta name="publisher" content="WiseMapping Open Source">
    <meta name="keywords"
          content="mindmap,mind map,mind maps,mindmaps,ideas,brainstorming,organize,thoughts,structure,collaboration,free,fast,simple,online,tool,knowledge,share,sharing,publish">
    <meta name="description"
          content="WiseMapping is a free, fast and simple online mind mapping editor for individuals and business. Sign up to start organizing and sharing your ideas and thoughts.">
    <meta property="og:title" content="WiseMapping"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="http://www.wisemapping.com"/>
    <meta property="og:image" content="http://www.wisemapping.com/images/logo.png"/>
    <meta property="og:site_name" content="WiseMapping.com"/>

    <title>
        <spring:message code="SITE.TITLE"/>-
        <c:choose>
            <c:when test="${requestScope.viewTitle!=null}">
                ${requestScope.viewTitle}
            </c:when>
            <c:otherwise>
                <spring:message code="${requestScope.title}"/>
            </c:otherwise>
        </c:choose>
    </title>
    <link rel="stylesheet" type="text/css" href="css/pageTemplate.css"/>

    <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript" language="javascript" src="js/jquery-2.1.0.min.js"></script>

    <script type="text/javascript" language="javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/less.js" type="text/javascript"></script>
</head>
<body>

<div id="pageContainer">
    <jsp:include page="header.jsp">
        <jsp:param name="removeSignin" value="${requestScope.removeSignin}"/>
    </jsp:include>

    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="jumbotron" style="margin:40px 0 100px 0;padding: 10px 60px;">
                    <tiles:insertAttribute name="body"/>
                </div>
            </div>
            <div class="col-md-1" style="padding-top:25px">
                <c:if test="${requestScope['google.ads.enabled']}">
                    <script type="text/javascript"><!--
                    google_ad_client = "ca-pub-7564778578019285";
                    /* WiseMapping Mindmap List */
                    google_ad_slot = "4071968444";
                    google_ad_width = 120;
                    google_ad_height = 600;
                    //-->
                    </script>
                    <div style="margin-top:5px;">
                        <script type="text/javascript"
                                src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
                        </script>
                    </div>
                </c:if>
            </div>
        </div>
    </div>

        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>

