##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 
# Fixed GHDB and regex matches
##
Plugin.define "FluentNET" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-08
version "0.2"
description "FluentNET, DotContent's powerful content management software, empowers business users to create, manage and publish web content for both general public access as well as internal use, and maximises the value of web-based information. - homepage: http://www.dotcontent.net"

# 14 results for "powered by FluentCMS from DotContent" @ 2010-08-08
examples %w|
www.eepublishers.co.za
www.resolve.co.za
www.getclosure.co.za
resolvetraining.co.za.dedi5a.your-server.co.za
|

matches [

# Powered by text
{ :ghdb=>'"powered by FluentCMS from DotContent"', :certainty=>75 },

# Version Detection # Meta Generator
{ :version=>/<meta name="GENERATOR" content="Fluent[CMS|NET]+ ([\d\.]+) / },

]

end

