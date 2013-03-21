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
	#cb.event("cbui_prePageDisplay")#
	<div id="content">
    	<div class="post" id="post-#prc.page.getContentID()#">
        	<div class="title">
        		<h2><a href="#cb.linkPage( prc.page )#" rel="bookmark" title="Permanent Link to #prc.page.getTitle()#">#prc.page.getTitle()#</a></h2>
        	</div>
        	<div class="postmeta">
        		<span class="author">Posted by #prc.page.getAuthorName()# </span> 
                <span class="date">  #prc.page.getDisplayPublishedDate()#</span> 
                <span class="comm"><a href="#cb.linkPage( prc.page )###comments">#prc.page.getNumberOfApprovedComments()#</a></span>
        	</div>
            <div class="entry">
            	<!--- Don't get the content, render the content --->
				#prc.page.renderContent()#
            </div>
        	<cfif prc.page.hasCategories()>
            	<div class="singleinfo">
            		<span class="category">Categories: #cb.quickCategoryLinks( prc.page )# </span>
            	</div>
            </cfif>
        </div>
        <cfset prc.entry = prc.page>
        #cb.quickView( view='_comments' )#
    </div>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_postPageDisplay")#
</cfoutput>