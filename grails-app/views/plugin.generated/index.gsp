
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="plugin" />
        <title>Plugin List</title>
    </head>
    <body>
        <div class="body">
			<div class="centerbox">
			<h1>Plugin Repository</h1>
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${plugin}">
				<g:renderErrors bean="${plugin}" as="list" />
			</g:hasErrors>
			<p/>
			
				<table class="noborder">
					<tr><td class="option">
						<g:link controller="plugin" action="upload"><img src="${resource(dir:'images',file:'upload_button.png')}" align="bottom"/></g:link>
					</td><td class="option">
						<g:link controller="plugin" action="browse"><img src="${resource(dir:'images',file:'plugins_button.png')}" align="bottom"/></g:link>
					</td></tr>
					<tr><td class="option">
						<g:link controller="plugin" action="upload">Upload plugin</g:link>
					</td><td class="option">
						<g:link controller="plugin" action="browse">Browse plugins</g:link>
					</td></tr>
				</table
			</div>
			<div class="note">
				<h2>How to use the Plugin Repository</h2>
				
				<h3>For a single Grails application</h3>
				In your Grails project, create a file <span class="code">grails-app/conf/BuildConfig.groovy</span> with the following contents:
				<br/>
<pre class="code">
grails.plugin.repos.discovery.myRepository="<g:createLink controller="local" absolute="true"/>"
grails.plugin.repos.resolveOrder=['myRepository','core']
</pre>
				<h3>For all local Grails applications</h3>
				In your home directory, create a file <span class="code">$HOME/.grails/settings.groovy</span> with the following contents:
				<br/>
<pre class="code">
grails.plugin.repos.discovery.myRepository="<g:createLink controller="local" absolute="true"/>"
grails.plugin.repos.resolveOrder=['myRepository','core']
</pre>
			</div>
        </div>
    </body>
</html>