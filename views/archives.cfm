<cfoutput>
    <!--- ContentBoxEvent --->
    #cb.event("cbui_preArchivesDisplay")#
    <!---show entries--->
    <div id="content">
    	#cb.quickEntries()#
    </div>
    <!--- ContentBoxEvent --->
    #cb.event("cbui_postArchivesDisplay")#
</cfoutput>