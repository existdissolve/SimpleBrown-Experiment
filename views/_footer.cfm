<cfoutput>
			<!--- contentboxEvent --->
			#cb.event("cbui_afterContent")#
			<div class="clear"></div>
		</div>	
	</div>
	<div id="footer">
	    <!--- contentboxEvent --->
		#cb.event("cbui_footer")#
		<div class="fcred">
			Copyright &copy; #year( now() )# 
			<a href="#cb.linkHome()#" title="#cb.siteName()#">#cb.siteName()#</a>
            <br />
			<div class='clear'></div>
        </div>	
	</div>
    <!--- contentboxEvent --->
	#cb.event("cbui_beforeBodyEnd")#
</body>
</html>      
</cfoutput>