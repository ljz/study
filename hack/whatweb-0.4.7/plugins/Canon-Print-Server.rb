##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Canon-Print-Server" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-07
version "0.1"
description "Canon Print Server - Print servers connect printers directly to the network so that multiple PCs can share them. - Homepage: http://canon.com"

# ShodanHQ results as at 2011-03-07 #
# 1,142 for PRINT_SERVER WEB
# 1,142 for PRINT_SERVER WEB 1.0

# Examples #
examples %w|
133.5.175.56
133.95.161.160
133.46.61.11
150.46.147.217
150.7.164.7
133.6.78.52
|

# Matches #
matches [

# Manufacturer Link # Unknown Model
{ :text=>'<tr><td align="left"><A href="http://www.niigata-canotec.co.jp" name="canon_group" target="new_win">' },

# Firmware Version Detection # Unknown Model
{ :url=>"/ps_stat.htm", :firmware=>/<td>Hardware ID: [^<]{1,10}<br>Firmware Version: ([^<]{1,10})<br>Protocol ID: [^<]{1,10}<br>Default Name: [^<]{1,10}<br>Server Name: [^<]{1,10}<br>H\/W Address: [^<]{12}<br>/ },

# MAC Detection # Unknown Model
{ :url=>"/ps_stat.htm", :string=>/<td>Hardware ID: [^<]{1,10}<br>Firmware Version: [^<]{1,10}<br>Protocol ID: [^<]{1,10}<br>Default Name: [^<]{1,10}<br>Server Name: [^<]{1,10}<br>H\/W Address: ([^<]{12})<br>/ },

# Default Logos
{ :url=>"/canongrp.gif", :md5=>"894c5a7115790dc428592752baa20d13" },
{ :url=>"/canoninc.gif", :md5=>"3f780904c5f8e650d0fb0df6b5e28d6b" },

# Menu HTML # NetHawk
{ :model=>"Nethawk", :text=>'<a href="tcp_ip.htm">[TCP/IP]</a> <a href="netware.htm">[NetWare]</a> <a href="apple.htm">[AppleTalk]</a> <a href="smb.htm">[SMB]</a>' },

# Model Detection # NetHawk
{ :model=>/<center>[\r\n]*<h1>[\r\n]*<b>(NetHawk N-111|NetHawk N500)<\/b><\/h1><\/center>/ },

# Model Detection # Meta Generator # NetHawk N-111
{ :text=>'<meta name="GENERATOR" content="Mozilla/4.7 [ja] (Win98; I) [Netscape]">', :model=>"NetHawk N-111", :certainty=>25 },

]

# Passive #
def passive
	m=[]

	# Server: PRINT_SERVER WEB # Also used by other printer servers
	m << { :certainty=>25, :version=>@meta["server"].scan(/^PRINT_SERVER WEB ([\d\.]+)$/) } if @meta["server"] =~ /^PRINT_SERVER WEB ([\d\.]+)$/

	# Return passive matches
	m
end

end


