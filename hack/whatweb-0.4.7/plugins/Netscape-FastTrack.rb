##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Netscape-FastTrack" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-14
version "0.1"
description "This product version has been EOL'd and is beyond its end of support life (EOSL) date. Customers should migrate to a currently supported version of Sun ONE Web Server - Homepage: https://cds.sun.com/is-bin/INTERSHOP.enfinity/WFS/CDS-CDS_SMI-Site/en_US/-/USD/ViewProductDetail-Start?ProductRef=NSC-FT-2.01C-G-F@CDS-CDS_SMI"

# ShodanHQ results as at 2011-03-14 #
# 810 for Netscape FastTrack

# Examples #
examples %w|
68.160.66.251
194.214.122.229
212.13.154.8
216.158.96.233
206.175.176.48
119.97.209.44
12.202.192.58
129.1.87.221
63.175.72.62
173.166.241.230
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@meta["server"].scan(/^Netscape-FastTrack\/(.+)$/) } if @meta["server"] =~ /^Netscape-FastTrack\/(.+)$/

	# Return passive matches
	m

end

end

