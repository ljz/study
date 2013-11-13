##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "AMX-Mod-X" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-04
version "0.1"
description "AMX Mod X is a versatile Half-Life metamod plugin which is targetted toward server administration. - homepage http://www.amxmodx.org/"

# 4 results for ext:cfg "Linux users may encounter problems if they specify" @ 2010-09-04
examples %w|
www.ciberinc.cl/dod/publico/dod/addons/amxmodx/configs/sql.cfg
amxmodx.ucoz.ru/_fr/25/0749705.cfg
amxmodx.ucoz.ru/_fr/25/sql.cfg
|

matches [

{ :text=>'// *NOTE* amx_sql_type specifies the DEFAULT database type which admin.sma will use.' },

]

# Grab mySQL username, server and database details
def passive
	m=[]

	if @body =~ /amx_sql_host[\s]+"([^\"]*)"/ and @body =~ /amx_sql_user[\s]+"([^\"]+)"/ and @body =~ /amx_sql_pass[\s]+"([^\"]*)"/
                version=@body.scan(/amx_sql_user[\s]+"([^\"]+)"/)[0][0] + ":" + @body.scan(/amx_sql_pass[\s]+"([^\"]*)"/)[0][0] + "@" + @body.scan(/amx_sql_host[\s]+"([^\"]+)"/)[0][0]
                m << {:version=>version}
        end

        m

end


end

