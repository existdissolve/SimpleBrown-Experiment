<cfoutput>
<div id="search">	
	<form role="search" method="post" id="searchform" action="#cb.linkContentSearch()#">
    	<input type="text" name="q" id="q" value="Search ..." onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
    	<input type="submit" id="searchsubmit" name="b" value="" />
    </form>
</div>
<div class="clear"></div>
</cfoutput>