##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "BrowserCMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-18
version "0.1"
description "The newly redesigned BrowserCMS 2.0 is an easy, affordable way to control, edit, and organize website content. - homepage: http://www.browsercms.com/"

# 96 results for "powered by BrowserCMS" @ 2010-10-18
examples %w|
www.browsercms.com
www.browsermedia.com
www.aacap.org
www.amwa.net
www.amwa.net/portlets/login/
www.atssa.com
www.atssa.com/portlets/login/
www.efc.org/portlets/login/login-portlet.jsp
www.plataformatec.com.br
www.sheehanassociates.com
www.usra.edu
|

matches [

# Default HTML comment
{ :text=>'<!--User is member of the following groups:  -->' },

# 2.x # Powered by text
{ :text=>'<li class="bmcms"><a href="http://www.browsercms.com/index.ww" title="BrowserCMS 2.0" target="_blank"><span>Powered by BrowserCMS 2.0</span></a></li>', :version=>"2.x" },

# Powered by text
{ :regexp=>/Powered by <a href="http:\/\/www.browsercms.com[\/]*"[^>]+>BrowserCMS<\/a>/i },
{ :regexp=>/<a href="http:\/\/www.browsercms.com[\/]*"[^>]+title="Powered by BrowserCMS"[^>]+/ },

# Powered by logo default HTML
{ :regexp=>/<a href="http:\/\/www.browsercms.com[^>]+><img[^>]*src="\/site\/images[^>]+ onmouseover="this.src='\/site\/images[^>]+onmouseout="this.src='\/site\/images[^>]+alt="Powered by BrowserCMS"[^>]*><\/a>/i },

# Login page
{ :text=>'<form method="POST" action="/portlets/login/do-login.jsp" name="security">' },
{ :regexp=>/<input type="hidden" name="success_uri" value="[^>]*\/page.ww\?name=[^>]*\&section=[^>]*"\/>/ },
{ :regexp=>/<input type="hidden" name="failure_uri" value="[^>]*\/page.ww\?name=[^>]*\&section=[^>]*"\/>/ },

# Version detection # Meta generator
{ :version=>/<meta name="generator" content="BrowserCMS ([^\"]+)"/ },

]

end

