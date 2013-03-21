<cfoutput>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_prePageDisplay")#
	<!--- search Results --->
	<div id="content">
		<!--- Search Results --->
		<cfif arrayLen( cb.getSearchResults().getResults() )>
			<cfloop array="#cb.getSearchResults().getResults()#" index="entry">
				<cfif getMetaData( entry ).name eq "contentbox.model.content.Entry">
					#renderView( view="simplebrown/templates/entry" )#
				<cfelse>
					<cfset page = entry>
					#renderView( view="simplebrown/templates/page" )#
				</cfif>
			</cfloop>
        <cfelse>
        	<h1>Nothing Found!</h1>
            <br />
    		<!--- Missing Page --->
    		<p>Sorry, there were no pages or blog posts that matched your search.</p>
            <p>If you're feeling lucky, why not try again?</p>
		</cfif>
	</div>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_postPageDisplay")#
</cfoutput>