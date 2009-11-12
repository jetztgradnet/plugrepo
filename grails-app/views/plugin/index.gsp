
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="plugrepo" />
        <title>Plugin Repository</title>
		<g:javascript library="prototype" />
    </head>
    <body>
		<div class="body">
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${plugin}">
				<g:renderErrors bean="${plugin}" as="list" />
			</g:hasErrors>
			<p/>
			
			<table class="noborder">
				<tr><td class="option">
					<g:link controller="plugin" action="upload"><img border="0" src="${resource(dir:'images',file:'upload_button.png')}" align="bottom"/></g:link>
				</td><td class="option">
					<g:link controller="plugin" action="browse"><img border="0" src="${resource(dir:'images',file:'plugins_button.png')}" align="bottom"/></g:link>
				</td></tr>
				<tr><td class="option">
					<g:link controller="plugin" action="upload">Upload plugin</g:link>
				</td><td class="option">
					<g:link controller="plugin" action="browse">Browse plugins</g:link>
				</td></tr>
			</table
			<br/>
			<h2>Search for plugins</h2>
			<g:render template="search"/>
				
			<br/>
			<g:render template="quickdoc"/>
		</div>
	</body>
</html>
