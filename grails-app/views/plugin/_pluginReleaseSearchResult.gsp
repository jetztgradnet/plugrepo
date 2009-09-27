<g:set var="link" value="${createLink(controller: 'plugin', action: 'info', params: [plugin: pluginInstance.name])}" />
<div class="name"><a href="${link}">Plugin ${pluginInstance.name}, Release ${pluginRelease.pluginVersion}</a></div>
<g:set var="desc" value="${pluginInstance?.description}" />

<g:if test="${desc?.size() > 120}"><g:set var="desc" value="${desc[0..120] + '...'}" /></g:if>
<div class="desc">${desc?.encodeAsHTML()}</div>
<g:link controller="plugin" action="download" params="[plugin:pluginInstance.name, version: pluginRelease.pluginVersion]">[Download]</g:link> 
<g:link controller="plugin" action="docs" params="[plugin:pluginInstance.name]">[Docs]</g:link> <br />

<%--<g:render template="plugin" model="['pluginInstance':pluginInstance]"/>--%>
