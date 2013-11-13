##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "TCMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-29
version "0.1"
description "homepage: http://www.tcms-sep.com"

# 26 results for "powered by TCMS" @ 2010-08-28
examples %w|
image.tanzarine.net
www.oberhessen.de
www.weber-wireless.com
www.verein-oberhessen.de
|

matches [

{ :ghdb=>'"powered by TCMS"', :certainty=>75 },

]

def passive
        m=[]

	# TCMS_SESS_ID cookie
	m << {:name=>"TCMS_SESS_ID Cookie" } if @meta["set-cookie"] =~ /TCMS_SESS_ID=/

	# 2.0+ powered by text
        if @body =~ /				<a style="color:#999;" href="http:\/\/www.arsmedia-nidda.de">arsmedia<\/a>/
		if @body =~ /powered by TCMS v[0-9\.]+ &copy; [0-9]{4} by/
	                version=@body.scan(/powered by TCMS v([\d\.]+) &copy; [0-9]{4} by/).to_s
        	        m << {:version=>version}
		end
        end

	# 3.0+ Powered by text
	if @body =~ /<span class="copyright">Powered by tCMS v[\d\.]+ &copy;[0-9]{4} Tanzarine Technology Ltd<\/span>/
		version=@body.scan(/<span class="copyright">Powered by tCMS v([\d\.]+) &copy;[0-9]{4} Tanzarine Technology Ltd<\/span>/)[0][0]
		m << {:version=>version}
	end

        m

end


end

