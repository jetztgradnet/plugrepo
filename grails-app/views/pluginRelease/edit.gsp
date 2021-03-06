
<%@ page import="net.jetztgrad.plugrepo.PluginRelease" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit PluginRelease</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">PluginRelease List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New PluginRelease</g:link></span>
        </div>
        <div class="body">
            <h1>Edit PluginRelease</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${pluginReleaseInstance}">
            <div class="errors">
                <g:renderErrors bean="${pluginReleaseInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${pluginReleaseInstance?.id}" />
                <input type="hidden" name="version" value="${pluginReleaseInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:pluginReleaseInstance,field:'name')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="repository">Repository:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'repository','errors')}">
                                    <g:select optionKey="id" from="${net.jetztgrad.plugrepo.Repository.list()}" name="repository.id" value="${pluginReleaseInstance?.repository?.id}" noSelection="['null':'']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="plugin">Plugin:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'plugin','errors')}">
                                    <g:select optionKey="id" from="${net.jetztgrad.plugrepo.Plugin.list()}" name="plugin.id" value="${pluginReleaseInstance?.plugin?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pluginVersion">Plugin Version:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'pluginVersion','errors')}">
                                    <input type="text" id="pluginVersion" name="pluginVersion" value="${fieldValue(bean:pluginReleaseInstance,field:'pluginVersion')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="grailsVersion">Grails Version:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'grailsVersion','errors')}">
                                    <input type="text" id="grailsVersion" name="grailsVersion" value="${fieldValue(bean:pluginReleaseInstance,field:'grailsVersion')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fileToken">File Token:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'fileToken','errors')}">
                                    <input type="text" id="fileToken" name="fileToken" value="${fieldValue(bean:pluginReleaseInstance,field:'fileToken')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="documentationUrl">Documentation Url:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'documentationUrl','errors')}">
                                    <input type="text" id="documentationUrl" name="documentationUrl" value="${fieldValue(bean:pluginReleaseInstance,field:'documentationUrl')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="downloadUrl">Download Url:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginReleaseInstance,field:'downloadUrl','errors')}">
                                    <input type="text" id="downloadUrl" name="downloadUrl" value="${fieldValue(bean:pluginReleaseInstance,field:'downloadUrl')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
