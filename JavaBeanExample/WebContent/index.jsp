<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Beans Example</title>

<%-- Use fully qualified class path - Eclipse will have copied the class files into the right place. --%>
<%-- Effectively: MagicBean theBean = new MagicBean() --%>
<jsp:useBean id="theBean" class="ictgradschool.MagicBean" />

<%-- We may have had the Bean passed in via the request or pageContext objects. --%>

<%-- Alternately, we can use JSP long syntax to set the properies... --%>
<jsp:setProperty name="theBean" property="name" value="Billy" />
<jsp:setProperty name="theBean" property="PIK" value="P4SSWORD" />
<jsp:setProperty name="theBean" property="whoClimbed" value="Jack" />
<jsp:setProperty name="theBean" property="magic" value="true" />

<%-- ...or JSP short form (scriptlet)... --%>
<% theBean.setName("Billingsworth T. Beansworthy Esq. the Third"); %>
<%-- ... or JSTL --%>
<c:set target="${theBean}" property="name" value="Bill the Bean" />

<%-- Either way, after this point we have an initialized 'bean' ready to use. --%>

</head>
<body>

<p>A java bean is essentially a public .java source file that is compiled into a .class file and 
then placed in an appropriate place for this JSP to see it (WEB-INF/classes/*.class). You won't
be able to see this from within Eclipse, but assuming everything compiles properly, then they are
being copied into the 'deployment' area during a "Run As".</p>

<p>Java beans are intended as a logical grouping of variables (Strings, ints, booleans and other
data-types) rather than for doing any serious processing (this should be done within an accompanying
servlet instead.)</p>

<p><strong>This example project only works in Tomcat</strong><p>

<%-- And we can output the variables using JSP long syntax... --%>
Bean Name: <jsp:getProperty name="theBean" property="name" /><br />
<%-- ...or JSP shorthand... --%>
PIK: <%= theBean.getPIK() %><br />
<%-- ... or EL! --%>
Who Climbed: ${theBean.whoClimbed}<br />

<%-- Here I use a bean's 'property' in a conditional. Remember magic is private, so --%>
<%-- JSTL will resolve to use the getter, theBean.isMagic, to retrieve the value --%>
<c:if test="${theBean.magic}">
  <strong>Wohoo, Golden Goose here I come...</strong>
</c:if>

</body>
</html>