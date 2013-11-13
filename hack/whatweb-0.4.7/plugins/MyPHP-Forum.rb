##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-02-24 #
# Updated version detection
##
Plugin.define "MyPHP-Forum" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-31
version "0.2"
description "MyPHP-Forum - homepage: http://www.myphp.ws/"

# Google results as at 2010-08-31 #
# 23 for "powered by MyPHP Forum" -Vulnerability

# Examples #
examples %w|
dance.pl/old/pl/forum/topic.php
life-log.dk/kemi2/menu/pages/forum3/faq.php
mrphotoshop.altervista.org/blog2/topic.php
neapolisleague.altervista.org/forum/faq.php
www.m-150.com/forums/forum.php
www.m-150.in/forums/forum.php
www.shopforall.it/forum/index.php
www.studentkm.net/forums/topic.php
www.uck.at/forum/search.php
|

# Matches #
matches [

# Version Detection # Powered by text

{ :version=>/    <td width="50%" class="copy" height="24">Powered by: MyPHP Forum v([\d\.]+)/ },

{ :version=>/    <td width="50%" class="copy" height="24">Powered by: <a href="http:\/\/www.myphp.ws">MyPHP Forum v([\d\.]+)/ },

]

end

