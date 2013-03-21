<!---
/**
********************************************************************************
ContentBox - A Modular Content Platform
Copyright 2012 by Luis Majano and Ortus Solutions, Corp
www.gocontentbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
********************************************************************************
*/
--->
<cfoutput>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_preEntryDisplay")#
	<div id="content">
    	<div class="post" id="post-#prc.entry.getContentID()#">
        	<div class="title">
        		<h2><a href="#cb.linkEntry( prc.entry )#" rel="bookmark" title="Permanent Link to #prc.entry.getTitle()#">#prc.entry.getTitle()#</a></h2>
        	</div>
        	<div class="postmeta">
        		<span class="author">Posted by #prc.entry.getAuthorName()# </span> 
                <span class="date">  #prc.entry.getDisplayPublishedDate()#</span> 
                <span class="comm"><a href="#cb.linkEntry( prc.entry )###comments">#prc.entry.getNumberOfApprovedComments()#</a></span>
        	</div>
            <div class="entry">
            	<!--- Don't get the content, render the content --->
				#prc.entry.renderContent()#
            </div>
        	<cfif prc.entry.hasCategories()>
            	<div class="singleinfo">
            		<span class="category">Categories: #cb.quickCategoryLinks( prc.entry )# </span>
            	</div>
            </cfif>
        </div>
        #cb.quickView( view='_comments' )#
    </div>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_postEntryDisplay")#
</cfoutput>