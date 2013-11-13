##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "FreeJoomlas.com" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-01-30
version "0.1"
description "FreeJoomlas.com - We provide free hosting for your Joomla portals. It is absolutely FREE. Moreover, we provide FREE subdomains (YOURNAME.FreeJoomlas.com) and UNLIMITED data transfer. - homepage: http://www.freejoomlas.com/"

# Google Results as at 2011-01-30
# 100,000 for "joomla hosting powered by FreeJoomlas.com"
# 47,400 for site:FreeJoomlas.com

# Examples #
examples %w|
http://grall.freejoomlas.com/
http://animationcity.freejoomlas.com/
http://www.malaysiansimmer.freejoomlas.com/
http://www.organicfarming.freejoomlas.com/
http://www.snaalumni.freejoomlas.com/
http://etonmommyandme.freejoomlas.com/
http://www.ramkumar.freejoomlas.com/AFS
http://www.balkanskabanits.freejoomlas.com/
http://www.pracimantoro.freejoomlas.com/
|

# Matches #
matches [

# Hosted By HTML
{ :text=>'Free <a href="http://joomla.org" target=_blank>Joomla!</a> hosting powered by  <a href="http://freejoomlas.com"> FreeJoomlas.com </a>', :module=>"Joomla" },

]

end


