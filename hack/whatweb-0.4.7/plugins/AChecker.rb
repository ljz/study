##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "AChecker" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-17
version "0.1"
description "AChecker  is an open source Web accessibility evaluation tool. It can be used to review the accessibility of Web pages based on a variety international accessibility guidelines. - homepage: http://www.atutor.ca/achecker/"

# 6 results for intitle:"AChecker : ATRC Accessibility Checker:" @ 2010-09-17
examples %w|
www.atutor.ca/achecker/demo.php
dev.atutor.ca/achecker/demo.php
|

matches [

# Default title
{ :text=>'<title>AChecker : ATRC Accessibility Checker: </title>' },

]

# Version detection
def passive
        m=[]

        if @body =~ /	<br \/><h1>Web Accessibility Checker<\/h1>/
		if @body =~ /	<\/td><td><span> Version: ([\d\.]+)<\/span><\/td>/
	                version=@body.scan(/	<\/td><td><span> Version: ([\d\.]+)<\/span><\/td>/)[0][0]
			m << {:version=>version}
       		end
	end

        m

end


end

