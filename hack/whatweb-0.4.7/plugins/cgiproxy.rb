##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 #
# Updated version detection and matches
##
Plugin.define "CGIProxy" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-06-06
version "0.2"
description "This CGI script acts as an HTTP or FTP proxy. Through it, you can retrieve any resource that is accessible from the server it runs on. - homepage: http://www.jmarshall.com/tools/cgiproxy/"

# About 15 results for +filetype:cgi "Start browsing through this CGI-based proxy by entering a URL below" @ 2010-06-06
examples %w|
forrestspick.com/proxy/newcgi/nph-proxy.cgi
www.awxcnx.de/cgi-bin/proxy3/nph-proxy.cgi
www.tecmet.com/cgiproxy/nph-proxy.cgi
elwario91.zouig.org/proxy.cgi
webringlink.com/cgi-bin/nph-os.cgi
|

matches [

# GHDB Match
# http://johnny.ihackstuff.com/ghdb?function=detail&id=531
{ :ghdb=>'filetype:cgi "Start browsing through this CGI-based proxy by entering a URL below"', :certainty=>75 },

# Default title
{ :text=>'<title>Start Using CGIProxy</title>' },

# Vesion detection
{ :version=>/<a href="http:\/\/www.jmarshall.com\/tools\/cgiproxy\/"><i>CGIProxy ([^<]+)<\/i><\/a>/ },

]

end

