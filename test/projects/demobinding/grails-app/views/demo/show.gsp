
<%@ page import="demobinding.Demo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'demo.label', default: 'Demo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-demo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-demo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list demo">
			<%--
				<g:if test="${demoInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="demo.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${demoInstance}" field="name"/></span>
					
				</li>
				</g:if>
			--%>
				<g:if test="${demoInstance?.name_en_US}">
				<li class="fieldcontain">
					<span id="name_en_US-label" class="property-label"><g:message code="demo.name_en_US.label" default="Nameen US" /></span>
					<span class="property-value" aria-labelledby="name_en_US-label"><g:fieldValue bean="${demoInstance}" field="name_en_US"/></span>
				</li>
				<li class="fieldcontain">
					<span id="field1_en_US-label" class="property-label"><g:message code="demo.field1_en_US.label" default="field1 en US" /></span>
					<span class="property-value" aria-labelledby="field1_en_US-label"><g:fieldValue bean="${demoInstance}" field="field1_en_US"/></span>
				</li>
				<li class="fieldcontain">
					<span id="field2_en_US-label" class="property-label"><g:message code="demo.field2_en_US.label" default="field2 en US" /></span>
					<span class="property-value" aria-labelledby="field2_en_US-label"><g:fieldValue bean="${demoInstance}" field="field2_en_US"/></span>
				</li>
				</g:if>
			
				<g:if test="${demoInstance?.name_fr_FR}">
				<li class="fieldcontain">
					<span id="name_fr_FR-label" class="property-label"><g:message code="demo.name_fr_FR.label" default="Namefr FR" /></span>
					<span class="property-value" aria-labelledby="name_fr_FR-label"><g:fieldValue bean="${demoInstance}" field="name_fr_FR"/></span>
				</li>
				<li class="fieldcontain">
					<span id="field1_fr_FR-label" class="property-label"><g:message code="demo.field1_fr_FR.label" default="field1 fr FR" /></span>
					<span class="property-value" aria-labelledby="field1_fr_FR-label"><g:fieldValue bean="${demoInstance}" field="field1_fr_FR"/></span>
				</li>
				<li class="fieldcontain">
					<span id="field2_fr_FR-label" class="property-label"><g:message code="demo.field2_fr_FR.label" default="field2 fr FR" /></span>
					<span class="property-value" aria-labelledby="field2_fr_FR-label"><g:fieldValue bean="${demoInstance}" field="field2_fr_FR"/></span>
				</li>
				</g:if>
			
				<g:if test="${demoInstance?.name_es_ES}">
				<li class="fieldcontain">
					<span id="name_es_ES-label" class="property-label"><g:message code="demo.name_es_ES.label" default="Namees ES" /></span>
					<span class="property-value" aria-labelledby="name_es_ES-label"><g:fieldValue bean="${demoInstance}" field="name_es_ES"/></span>
				</li>
				<li class="fieldcontain">
					<span id="field1_es_ES-label" class="property-label"><g:message code="demo.field1_es_ES.label" default="field1 es ES" /></span>
					<span class="property-value" aria-labelledby="field1_es_ES-label"><g:fieldValue bean="${demoInstance}" field="field1_es_ES"/></span>
				</li>
				<li class="fieldcontain">
					<span id="field2_es_ES-label" class="property-label"><g:message code="demo.field2_es_ES.label" default="field2 es ES" /></span>
					<span class="property-value" aria-labelledby="field2_es_ES-label"><g:fieldValue bean="${demoInstance}" field="field2_es_ES"/></span>
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${demoInstance?.id}" />
					<g:link class="edit" action="edit" id="${demoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
