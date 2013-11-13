##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Video-CMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-03
version "0.1"
description "Video CMS is the ultimate online video content publishing tool for professional webmasters. Whether you want to create a informational video website, video tutorial website, video sharing website, paid video service, or simply to develop your unique idea, Video CMS will help you do exactly that. - Homepage: http://www.codemight.com/"

# Google results as at 2011-03-03 #
# 60 for "powered by Video CMS"

# Examples #
examples %w|
video.artcrazed.com
kolarchives.com/videocms/
64.151.98.220/videocms/
usdrugabuse.com/video/
www.ratethisgranny.com
www.nambugun.kr/ucc/
|

# Matches #
matches [

# Powered by text
{ :text=>'<p style="color:#aaaaaa;text-align:center">Powered by <a style="color:#aaaaaa" href="http://www.codemight.com" target="_blank">Video CMS</a><br /><br /></p></body>' },


]

end


