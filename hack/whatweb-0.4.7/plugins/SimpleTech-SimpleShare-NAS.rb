##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "SimpleTech-SimpleShare-NAS" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-11-01
version "0.1"
description "Whether it's photos and music, or business presentations and financial data, your files are valuable and must be kept safe, accessible and easily shared with others. SimpleShare Network Attached Storage enables you to do it all. - homepage: http://www.simpleshare.com/"
# Default login: admin/simple

# 21 ShodanHQ results for WWW-Authenticate: Basic realm="SimpleShare (default user name is admin and password is simple)"
examples %w|
64.75.193.93
64.183.16.20
|

# Passive #
def passive
	m=[]

	# Check Server
	if @meta["server"] =~ /httpd/

		# SimpleShare WWW-Authenticate Realm
		m << { :status=>401, :name=>"SimpleShare WWW-Authenticate Realm" } if @meta["www-authenticate"] =~ /Basic realm="SimpleShare \(default user name is admin and password is simple\)"/

	end

	m

end

end

