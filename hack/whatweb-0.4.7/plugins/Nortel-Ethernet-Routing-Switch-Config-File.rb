##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Nortel-Ethernet-Routing-Switch-Config-File" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-14
version "0.1"
description "Nortel Ethernet Routing Switch Config File - homepage: http://products.nortel.com/go/product_index.jsp?locale=en-US&lcid=-1"

# 21 results for "qos queue-set-assignment queue-set" @ 2010-10-14
examples %w|
community.nortel.com/go/servlet/JiveServlet/download/13456-4929/ott-nortel.txt
filedb.experts-exchange.com/incoming/2009/01_w05/99490/Nortel-5510-Running-Config.txt
www.ertlnetworks.de/config.txt
www.groumpf.org/vrac/ConfigNodal.txt
www.opus1.com/nac/lv06configs/NAP_NORTEL5520.CFG
|

def passive
	m=[]

	if @body =~ /qos queue-set-assignment queue-set/

		# Get version
		if @body =~ /^! Software version = v([\d\.]+)/
			version=@body.scan(/^! Software version = v([\d\.]+)/)[0][0]
			m << { :version=>version }
		end

		# Get model
		if @body =~ /^! Model = Ethernet Routing Switch ([^\r^\n]+)/
			model=@body.scan(/^! Model = Ethernet Routing Switch ([^\r^\n]+)/)
			m << { :model=>model }
		end

	end

	m

end

end

