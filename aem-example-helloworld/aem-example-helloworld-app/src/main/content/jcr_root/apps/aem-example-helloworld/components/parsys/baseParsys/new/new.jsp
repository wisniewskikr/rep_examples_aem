<%@include file="/libs/foundation/global.jsp"%>
<%@ page session="false" import="
    com.day.cq.wcm.api.components.EditContext,
    com.roche.dfac.cobas.components.infrastructure.baseParsys.EmptyTextHelper,
    com.day.text.Text,
    org.apache.sling.api.resource.Resource,
    com.day.cq.wcm.commons.WCMUtils" %><%
    
    new EmptyTextHelper().applyEmptyText(slingRequest, editContext);
    if (editContext != null) {
        if (editContext.getParent() != null) {
            Resource curRes = (Resource) editContext.getParent().getAttribute("currentResource");
            if (curRes != null) {
                String prev = Text.getName(curRes.getPath());
                editContext.getEditConfig().setInsertBehavior("before " + prev);
            }
        }
    }
%>