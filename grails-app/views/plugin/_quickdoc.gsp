<div class="note">
	<h2>How to use the Plugin Repository</h2>

	<h3>For a single Grails application</h3>
	In your Grails project, edit or create a file <span class="code">grails-app/conf/BuildConfig.groovy</span> with the following contents:
	<br/>
<pre class="code">
grails.plugin.repos.discovery.myRepository="<g:createLink controller="local" absolute="true"/>"
grails.plugin.repos.resolveOrder=['myRepository','core']
</pre>
	<h3>For all local Grails applications</h3>
	In your home directory, edit or create a file <span class="code">$HOME/.grails/settings.groovy</span> with the following contents:
	<br/>
<pre class="code">
grails.plugin.repos.discovery.myRepository="<g:createLink controller="local" absolute="true"/>"
grails.plugin.repos.resolveOrder=['myRepository','core']
</pre>
	<p>Also, see <a href="http://grails.org/doc/1.1.x/guide/single.html#12.2%20Plugin%20Repositories">Grails Docs</a> for details.</p>
</div>
