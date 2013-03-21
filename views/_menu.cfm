<cfoutput>
<div id="submenu" class="menu-primary-container">
    <ul id="menu-primary" class="sfmenu sf-js-enabled sf-shadow">
		<!--- Always showing home page --->
  		<li><a href="#cb.linkHome()#" title="Go Home!">Blog</a></li>
		<!--- Root Menu --->
  		#cb.rootMenu( type="li" )#
  	</ul>
</div>
</cfoutput>