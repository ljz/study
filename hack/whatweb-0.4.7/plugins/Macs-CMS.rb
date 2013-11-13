##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Macs-CMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-18
version "0.1"
description "Mac's CMS is a Open Source, Flat-File AJAX CMS built using PHP 5 and was tested and run's perfectly on both IIS and APACHE. - homepage http://macs-framework.sourceforge.net/"

# 6 results for "Site Powered by Mac's PHP MVC Framework" @ 2010-09-18
examples %w|
macs-framework.sourceforge.net
mac.freehostia.com/demo/index.php/main/cms/login
|

matches [

# Default title
{ :text=>"<title>Mac's CMS - Admin Login</title>" },

# HTML comment
{ :text=>'    <!-- START: This block contains all code that the framework generates -->' },

# Powered by text
{ :text=>'Site Powered by Mac\'s PHP MVC Framework <a href="http://macs-framework.sourceforge.net/" target="_blank">Framework of the future</a><br />' },

]

end

