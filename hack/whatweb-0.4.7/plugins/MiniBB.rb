##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "MiniBB" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-02-27
version "0.1"
description "MiniBB is a free standalone open source program for building your own Internet forum. - Homepage: http://www.minibb.com/"

# Google results as at 2011-02-27 #
# 210 for "Powered by MiniBB"

# Examples #
examples %w|
minibb.org/minibb-test.php
kioskcd.com/minibb/index.php
suzukidr.pl/forum/index.php
integrexmachinist.com/forums/
tekgems.com/forum/
hitfm.kaluga.ru/community/forum/
trintalk.com/acb/
ada.untergrund.net/forum/
www.mellosa.com/forum/
www.woonyville.com/mb/index.php
www.nrdg.net/ching/
www.keenpeople.com/index.php?option=com_minibb
www.theparadinecase.de/minibb/
www.hunter.lt/index.php
www.cornblogs.de/zakynthos/forum.php
www.richplanet.net/forum/
www.dreamfabric.com/discussions/
www.colorpilot.com/forum/index.php
www.bbtalk.nl
www.ah.md/forum/
www.edwardforbes.co.uk/forums/
www.pochobradsky.com/forum/
www.skalinks.com/forums/
|

# Matches #
matches [

# Default Copyright HTML Comment
{ :text=>'<td class="tbTransparent txtR"><!--miniBB Copyright link. You are not allowed to remove it if you have not purchased the Commercial License. Refer to COPYING file for more-->' },

# Powered by text
{ :regexp=>/Powered by <a[^>]+href="http:\/\/www.minibb.(com|net)"[^>]*>miniBB[^<]{0,15}<\/a>/i },

# Version Detection # Powered by text
{ :version=>/Powered by <a[^>]+href="http:\/\/www.miniBB.(com|net)"[^>]*>miniBB ([^<]{1,7})<\/a>/i, :offset=>1 },

]

end


