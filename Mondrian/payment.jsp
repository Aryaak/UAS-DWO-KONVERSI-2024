<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost:3306/dwh_dvdrental?user=root&password" 
    catalogUri="/WEB-INF/queries/payment.xml">

select {[Measures].[Total Amount]} ON COLUMNS,
  {([Customer],[Category Film],[Store],[Staff])} ON ROWS

from [Payment]

</jp:mondrianQuery>

<c:set var="title01" scope="session">Query PURCHASING using Mondrian OLAP</c:set>