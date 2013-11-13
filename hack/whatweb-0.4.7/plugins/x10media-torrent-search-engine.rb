##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "X10media-Torrent-Search-Engine" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-01
version "0.1"
description "X10 Torrent Script is a bittorrent search engine, users fill in a keyword and get access to 5 000 000 files for search. - homepage: homepage: http://www.x10media.com/torrent-search-engine-script/"

# 29 results for "Powered by x10media Torrent Search Engine Script" @ 2010-08-01
# 196 results for "This search engine is in no way intended for illegal downloads. " @ 2010-08-01
examples %w|
www.x10torrent.com
hitsandfree.com
|

matches [

{ :text=>'This search engine is in no way intended for illegal downloads.', :certainty=>75 },
{ :text=>'	<meta name="copyright" content="X10Media"/>', :certainty=>75 },
{ :text=>'	<meta name="contributor" content="X10Media"/>', :certainty=>75 },
{ :text=>"<title>Torrent Search Engine Script</title>" },
{ :text=>'Powered by <a href="http://www.x10media.com/torrent-search-engine-script/" target="_blank">x10media Torrent Search Engine Script</a>' },

]


end

