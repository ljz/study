##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "AMR-WinControl" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-11-01
version "0.1"
description "This plugin identifies AMR-WinControl server - homepage: http://amr-wincontrol.software.informer.com/"

# 6 ShodanHQ results for "Server: AMR_WinControl" @ 2010-11-01
examples %w|
150.254.14.91
141.54.165.66
195.37.235.72
80.78.168.38
80.78.168.37
217.86.165.13
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@meta["server"].scan(/AMR_WinControl[_0-9]*\/([\d\.]+)/) } if @meta["server"] =~ /AMR_WinControl[_0-9]*\/([\d\.]+)/

	m

end

end

