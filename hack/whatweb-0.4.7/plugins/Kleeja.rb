##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Kleeja" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-18
version "0.1"
description "homepage: http://www.kleeja.com/"

# 55 results for intitle:"(powered by kleeja)" @ 2010-09-18
# 311 results for "powered by kleeja" @ 2010-09-18
examples %w|
alfuaim.com/up/
alwsta.com/up/
hazemsakeek.com/up/
kurdit.comyr.com/up/
migdad.net/upload/
nassab.net/uup/
nawdasht.comze.com
samt.web44.net
shkshk2.beeeba.com/download.php
up.shbaby.net
whyshare.net/ucp.php
www.r3r3.com
www.aansar.com/up/
www.hamsjazan.com/up/
www.islamup.com/download.php
www.fares9.net/upload/
www.cu-g.com/up/
www.dr-jaber.com/up/
www.lymedicine.com/upload/
|

matches [

# Default title
{ :regexp=>/<title>[^\(]+\(Powered by Kleeja\)<\/title>/ },

# Meta copyright
{ :text=>'<meta name="copyrights" content="Powered by Kleeja :: kleeja.com" />' },

# Meta description
{ :text=>'<meta name="Description" content="Powered by Kleeja :: kleeja.com" />' },

# Powered by text
{ :text=>'Powered by <a href="http://www.kleeja.com/" target="_blank">Kleeja</a>' },

# HTML comment
{ :text=>'<!-- IF REMOVE: Pay for a license -->' },
{ :text=>'<!-- IF REMOVE: Pay for a license - see http://www.kleeja.com -->' },

]

end

