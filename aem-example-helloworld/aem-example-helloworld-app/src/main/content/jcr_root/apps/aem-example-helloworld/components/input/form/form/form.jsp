<%@include file="/libs/foundation/global.jsp" %>
<%%>
<%@taglib prefix="sling2" uri="http://sling.apache.org/taglibs/sling" %>
<sling2:adaptTo adaptable="${slingRequest}" adaptTo="pl.kwi.model.input.form.InputFormModel" var="model"/>
<%@ page import="pl.kwi.utils.FormUtil, pl.kwi.utils.FormUtilModel"%>



<form method="POST" action="webapp.SELECTORNAME.html">	
	
	<c:set var="modelContent" value="<%=FormUtil.getModelWithResultComponentExist(resource, "formParsys/content")%>"/>                 
	<c:if test="${!modelContent.componentExists}">
		<div class="errorMessages">Please add mandatory form`s component: "Form - Content"</div>
	</c:if>
	
	<c:set var="modelSubmit" value="<%=FormUtil.getModelWithResultComponentExist(resource, "formParsys/submit")%>"/>                 
	<c:if test="${!modelSubmit.componentExists}">
		<div class="errorMessages">Please add mandatory form`s component: "Form - Submit button"</div>
	</c:if>	 
	
	<cq:include path="formParsys" resourceType="aem-example-helloworld/components/parsys/formParsys"/>
	  	
</form>