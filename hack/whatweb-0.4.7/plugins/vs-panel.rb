##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-02-21 #
# Updated version detection
##
Plugin.define "VS-Panel" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-29
version "0.2"
description "VS-Panel - homepage: http://www.vertigostudios.com"

# Google results as at 2010-08-29 #
# 56 for "powered by VS PANEL" -Vulnerability

# Examples #
examples %w|
arapispro.gr
dasyllas-markos.gr/index.php
idcon.it
www.arapis.gr
www.buildohellas.gr
www.enmikro.gr
www.euromonotiki.com.gr
www.evotec.gr
www.hometest.gr/en/
www.develiki.gr
www.hometests.gr
www.ioannisgeorgoulis.gr
www.joyseek.eu/index.php
www.matakidis.gr
www.mythosfurniture.gr
www.promocigar.gr/index.php
www.simeonidistours.gr/tours/
www.thinkclima.gr
www.tzaki.com.gr/en/
www.wireland.gr/index.php
|

# Matches #
matches [

# Made in Vertigo Studios text and logo
{ :text=>'    <td width="10%"><div align="right"><a href="http://www.vertigostudios.com" target="_blank"><img src="images/vs_white.gif" alt="Made in Vertigo Studios" width="48" height="21" hspace="3" vspace="3" border="0" /></a></div></td>' },

# Default logo
{ :md5=>'54ab59aeb78202bc2ec96abb0c6cff7c', :url=>'images/vs_white.gif' },

# Version Detection # < 10 # Powered by text
{ :version=>/&copy; [0-9]{4} \| Powered by VS PANEL v.([\d\.]+)<\/div><\/td>/ },

# Version detection # 10.x # Powered by text
{ :version=>/&copy; [0-9]{4} \| Powered by VS PANEL v.([\d\.]+)(<\/span>)<\/div><\/td>/ },

]

end

