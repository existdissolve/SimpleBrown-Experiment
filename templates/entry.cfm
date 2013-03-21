<cfoutput>
<!---blog loop--->
<div class="post" id="post-#entry.getContentID()#">
	<div class="title">
		<h2>
		    <a href="#cb.linkEntry( entry )#" rel="bookmark" title="Permanent Link to #entry.getTitle()#">#entry.getTitle()#</a>
        </h2>
	</div>
	<div class="postmeta">
		<span class="author">Posted by #entry.getAuthorName()# </span> 
        <span class="date">  #entry.getDisplayPublishedDate()#</span> 
       <span class="comm"><a href="#cb.linkEntry( entry )###comments">#entry.getNumberOfApprovedComments()#</a></span>
	</div>
	<div class="entry">
		<cfif isDefined( "entry.hasExcerpt" ) and entry.hasExcerpt()>
			#entry.getExcerpt()# <a href="#cb.linkEntry( entry )#" rel="bookmark" title="Permanent Link to #entry.getTitle()#">[...]</a>
		</cfif>
        <div class="clear"></div>
    </div>
    <cfif entry.hasCategories()>
	<div class="singleinfo">
		<span class="category">Categories: #cb.quickCategoryLinks( entry )# </span>
	</div>
    </cfif>
</div>
<!---end loop--->
</cfoutput>