##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "phpMyTourney" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-04
version "0.1"
description "homepage: http://phpmytourney.sourceforge.net/"

# 23 results for "Powered by phpmytourney" +Version @ 2010-08-29
examples %w|
web109.cyberwebserver-12.de/turnier/account.php
www.clan-drug.de/phpt/grid.php
www.netstormhq.com/tourney/details.php
www.z-tribe.de
nightmare6.ni.funpic.de/signup.php
tourney.netstormhq.com/details.php
tycoontour.ty.funpic.de/grid.php
|

matches [

# Powered by text
{ :text=>"Powered by <a href=\"http://phpmytourney.sourceforge.net/\"><font face='Arial' size='1'>phpMyTourney</font> </a>" },

# Error page
{ :text=>'ERROR : page not properly called' },

]

# Version detection using powered by text
def passive
        m=[]

        if @body =~ /Powered by <a href="http:\/\/phpmytourney.sourceforge.net\/"[^>]+>phpMyTourney<\/a>./
		if @body =~ /Version ([\d\.a-z]+)/
			version=@body.scan(/Version ([\d\.a-z]+)/)[0][0]
	                m << {:version=>version}
		end
        end

	if @body =~ /Powered by <a href="[http:\/\/]*phpmytourney.sourceforge.net\/"><font color="#999933">phpMyTourney<\/font><\/a>.Version [\d\.a-z]+/
		version=@body.scan(/Powered by <a href="[http:\/\/]*phpmytourney.sourceforge.net\/"><font color="#999933">phpMyTourney<\/font><\/a>.Version ([\d\.a-z]+)/)[0][0]
		m << {:version=>version}
	end

        m

end


end

