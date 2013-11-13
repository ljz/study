##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Teapot" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-14
version "0.1"
description "HTCPCP, a protocol for controlling, monitoring, and diagnosing coffee pots. - Homepage: http://www.apps.ietf.org/rfc/rfc2324.html"

# ShodanHQ results as at 2011-03-14 #
# 6 for 418 teapot

# Examples #
examples %w|
118.127.16.151
80.101.28.219
178.63.84.149
89.185.34.10
89.185.37.9
|

# Passive #
def passive
	m=[]

	# HTCPCP 418 Status Code
	if @status == 418
		if @body =~ /<title>([^<]+)<\/title>/i
			m << { :string=>@body.scan(/<title>([^<]+)<\/title>/i) }
		else
			m << { :string=>"I'm a teapot" }
		end
	end

	# Return passive matches
	m

end

end

