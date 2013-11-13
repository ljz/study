##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 #
# Updated matches, removed certainty and updated version detection
##
Plugin.define "boastMachine" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-06-16
version "0.2"
description "boastMachine blog - homepage: http://boastology.com/"

# 217 results for "powered by boastMachine" +"Recent posts" -exploit' @ 2010-06-16
examples %w|
www.coolzen.com
www.askdatabaseblogs.com
www.leonism.com
am3n.profusehost.net
www.cycleanywhere.com/blog/
tandij.com
deliwish.ls-aurora.com
www.pmhub.net/blog/
www.adaa.org.au/Blog/
www.intag.org/blog/darwin_onto.php
www.onemanswisdom.info
www.meetmadalyn.com/blog/
www.brionscheidel.com/blog/
www.hitechreps.com
www.chellbell.com/blog/
www.rainbowconceptions.com/rbrbrb/newblog/
www.goghdesign.com/thunderdog/thunderblog/
xsafari.com/blog/ekfblog.php
www.jrlsc.in/allfixonline_new/blog/bmachine/
gbytes.gsood.com/health.php
wonderrland.com/index.php
www.cycleanywhere.com/blog/
|

matches [

# Powered by text
{ :ghdb=>'"powered by boastMachine" +"Recent posts"', :certainty=>75 },

# Version detection # Powered by text
{ :version=>/Powered by <a href="http:\/\/boastology.com">boastMachine v([\d\.]+)<\/a>/ },

# Default logo HTML
{ :regexp=>/<a href="http:\/\/boastology.com"><img src="http:\/\/[^>]*alt="Powered by boastMachine" \/><\/a>/ },

]

end


