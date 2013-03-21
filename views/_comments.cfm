<cfoutput>
<div id="commentsbox">
    <cfif prc.entry.hasComment()>
		<h3 id="comments">#prc.entry.getNumberOfApprovedComments()# Responses so far.</h3>
        <ol class="commentlist">
			#cb.quickComments()#
		</ol>
    <cfelse>
		<cfif not prc.entry.getAllowComments()>
    		<p class="nocomments">Comments are closed.</p>
    	</cfif>
	</cfif>
	<cfif prc.entry.getAllowComments()>
	<div id="respond">
		<h3>Leave a Reply</h3>
        #cb.quickCommentForm( prc.entry )#
	</div>
    </cfif>
</div>
</cfoutput>