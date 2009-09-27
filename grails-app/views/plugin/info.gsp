<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="layout" content="plugrepo" />
		<title>Plugin Information</title>
		<g:javascript library="prototype" />
	</head>
	<body>
		<div class="body">
			<h1>Plugin ${pluginInstance?.name}</h1>
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<div class="list">
				<g:render template="plugin" model="['pluginInstance':pluginInstance]"/>
			</div>
		</div>
	</body>
</html>
