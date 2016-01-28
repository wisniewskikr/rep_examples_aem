<%@include file="/libs/foundation/global.jsp" %>
<%%>
<%@taglib prefix="sling2" uri="http://sling.apache.org/taglibs/sling" %>
<sling2:adaptTo adaptable="${resource}" adaptTo="pl.kwi.model.input.form.InputFormModel" var="model"/>
<%@ page import="pl.kwi.utils.FormUtil, pl.kwi.utils.FormUtilModel"%>



<form method="POST" action="servlet.INPUT.html">
	<input type="hidden" name="submitTarget" value="${model.submitTarget}"/>
	
	<c:if test="${empty model.submitTarget}">
		<div class="errorMessages">
			Please fill mandatory form`s field: "Submit target"			
		</div>
	</c:if>	
	
	<c:set var="modelContent" value="<%=FormUtil.getModelWithResultComponentExist(resource, "formParsys/content")%>"/>                 
	<c:if test="${!modelContent.componentExists}">
		<div class="errorMessages">Please add mandatory form`s component: "Form - Content"</div>
	</c:if>
	
	<c:set var="modelSubmit" value="<%=FormUtil.getModelWithResultComponentExist(resource, "formParsys/submit")%>"/>                 
	<c:if test="${!modelSubmit.componentExists}">
		<div class="errorMessages">Please add mandatory form`s component: "Form - Submit button"</div>
	</c:if>	 
	
	<cq:include path="formParsys" resourceType="aem-example-helloworld/components/parsys/emptyTextParsys"/>
	  	
</form>