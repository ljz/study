##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "MiniCWB" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-08-28
version "0.1"
description "miniCWB is a Content Management Software and is meant to satisfy the needs of those who do not have access to a database, but want a dynamic website, editable through admin area and most of all, based on a FREE solution. The most important aspect about this software is that it is search engine optimised, and thus very popular. - homepage: http://www.mini-open-cms.com/"

# 51 results for "powered by MiniCWB" @ 2010-08-28
examples %w|
h2o-pics.com
www.tkpix.com
www.web-hosting-control-panel-addons.com/product.php/MiniCWB-Site-Builder-for-PLESK/3/
www.tratamente.info/hemoroizi/index.php
www.dreamweaver-extensions.net
www.vacas.be
testsite.hailandkill.org/minicwb/
www.abantu.nl
www.test.sheppeyonline.co.uk
davidsargent.net78.net
m0fetest.110mb.com/news.php
|

matches [

# Meta author
{ :text=>'<meta name="Author" content="GraFX srl - http://www.grafxsoftware.com" />' },

# HTML text
{ :text=>'<!--Copyright link. You may not remove it if you use free GPL licence. Refer to ./LICENSE file for more-->' },

# Powered by text
{ :text=>'<p>Powered by <a href="http://www.grafxsoftware.com/" class="text" title="Powered by CWB - small Open CMS - Content Management System">CWB</a>' },
{ :text=>"<a href='http://www.mini-open-cms.com' rel='external'>Powered by miniCWB</a>" },

]

end

