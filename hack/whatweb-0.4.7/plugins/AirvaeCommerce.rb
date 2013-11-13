##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-01-07 #
# Updated version detection method
# Updated matches
##
Plugin.define "AirvaeCommerce" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-22
version "0.2"
description "Airvae Commerce 3.0 is a flexible, powerful, e-commerce shopping cart software offering clients, web developers, and I.T. professionals the perfect solution to deploy sophisticated, extensible, e-commerce solutions. - homepage: http://www.airvaecommerce.com/"

# 43 results for "powered by AirvaeCommerce" -Vulnerability @ 2010-08-22

# Examples #
examples %w|
airvaecommerce.com/ACI/
demo.airvaecommerce.com
babieswire.info
www.greatbabyproducts.com
www.dogncatz.com
www.inflatablz.com
|

# Matches #
matches [

	# Default stylesheet HTML
	{ :text=>'<link href="imgs/store.css" rel="stylesheet" media="screen">' },

	# 3.x # Default stylesheet HTML
	{ :text=>'<link href="/conf/minify/f=imgs/store.css&142" rel="stylesheet" media="screen">', :version=>"3.x" },

	# Version Detection # Powered by footer
	{ :version=>/<a href="http:\/\/www.airvaecommerce.com">Powered by AirvaeCommerce ([\d\.]+) - E-Commerce Shopping Cart Software<\/a><br><br>/ },

]

end

