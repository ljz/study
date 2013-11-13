##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-02-25 #
# Updated version detection
##
Plugin.define "Pixie" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-07-18
version "0.2"
description "pixie is a free, open source web application that will help you quickly create your own website - homepage: http://www.getpixie.co.uk/"

# Google results as at 2010-07-18 #
# 5 for +"powered by pixie" -"Powered by Pixie Dust" +theme

# Examples #
examples %w|
demo.getpixie.co.uk
www.marcjohnsdesign.com
pixie.axtry.com
www.indigoenergies.co.nz
|

# Matches #
matches [

# Powered by text
{ :regexp=>/href="http:\/\/www.getpixie.co.uk" title="Get Pixie">(Pixie Powered|Powered by Pixie|Pixie)<\/a>/ },

# Version Detection # Meta Generator
{ :version=>/<meta name="generator" content="Pixie ([\d\.]+) - Copyright \(C\) [\d]{4} - [\d]{4}\." \/>/ },

]

end

