##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-03-06 #
# Updated OS detection
##
Plugin.define "RackCorp-CDN" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-01-30
version "0.2"
description "RackCorp Content Delivery Network - RackCorp is the preferred hosting provider for critical websites around the world. They specialise in high-uptime, high-reliability, and fast hosting services. Their systems serve some very large content delivery networks (CDN's), allowing them to serve Over a Petabyte of data every month globally from a variety of locations including Australia, US, UK, Germany, and Canada. - homepage: http://www.rackcorp.com/"

# ShodanHQ results as at 2011-01-30 #
# 50 for rackcorpcdn
# Australia 21 # United States 14 # Germany 10 # United Kingdom 4 # India 1 #

# Examples #
examples %w|
67.19.61.116
78.129.148.29
124.158.19.20
124.158.19.21
124.158.19.26
124.158.19.27
124.158.19.28
124.158.19.29
124.158.19.30
124.158.19.42
124.158.19.62
124.158.19.72
124.158.19.74
124.158.19.75
124.158.19.91
188.72.255.43
203.145.50.164
207.44.231.225
|

# Passive #
def passive
	m=[]

	# HTTP Server Header # Server and OS Detection #
	# Web servers are Apache or Nginx # OS is Linux
	# As per : http://blog.rackcorp.com/?p=31
	m << { :version=>@meta["server"].scan(/^[\s]*rackcorpcdn\/([\d\.]{3,6})/), :string=>"Apache or Nginx", :os=>"Linux" } if @meta["server"] =~ /^[\s]*rackcorpcdn\/[\d\.]{3,6}/

	# Return passive matches
	m
end

end

