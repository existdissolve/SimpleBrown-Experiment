<cfoutput>
<li class="comment even thread-even depth-1" id="comment-#comment.getCommentID()#">
    <div id="div-comment-#comment.getCommentID()#" class="comment-body">
		<div class="comment-author vcard">
    		#cb.quickAvatar(author=comment.getAuthorEmail(),size=32, cssClass="avatar avatar-32 photo")#
    		<cite class="fn">
    		    <cfif len(comment.getAuthorURL())>
    		    	<a href="<cfif NOT findnocase("http",comment.getAuthorURL())>http://</cfif>#comment.getAuthorURL()#" title="Open #comment.getAuthorURL()#">#comment.getAuthor()#</a>
                <cfelse>
                	#comment.getAuthor()#
				</cfif>
            </cite> 
            <span class="says">says:</span>
            <br>
            <div class="comment-meta commentmetadata">
                #comment.getDisplayCreatedDate()#
            </div>
            <p>#comment.getDisplayContent()#</p>
		</div>
	</div>
</li>
</cfoutput>