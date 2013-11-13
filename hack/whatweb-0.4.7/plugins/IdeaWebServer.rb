##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "IdeaWebServer" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-14
version "0.1"
description "home.net.pl hosting - a major polish hosting company home.pl uses its own server software (Idea Web Server) - Homepage: http://home.net.pl"

# ShodanHQ results as at 2011-03-13 #
# 91,705 for IdeaWebServer
# All results are from Poland

# Examples #
examples %w|
89.161.189.91
79.96.144.37
89.161.188.231
79.96.225.88
89.161.139.59
79.96.41.17
212.85.110.71
79.96.204.115
79.96.131.17
79.96.92.82
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@meta["server"].scan(/^IdeaWebServer\/v([\d\.]+)$/) } if @meta["server"] =~ /^IdeaWebServer\/v([\d\.]+)$/

	# Return passive matches
	m

end

end

