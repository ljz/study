##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Free-Simple-Software" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-26
version "0.1"
description "Free Simple Software - homepages: http://www.freesimpleshop.com/ http://www.freesimplecms.com/ http://www.freesimpleblog.com/ http://www.freesimplehost.com/"

# 24 results for "Powered by Free Simple Software (Free Simple CMS / Free Simple Shop / Free Simple Blog / Free Simple Host)" @ 2010-09-26
examples %w|
www.freesimpleshop.com/index.php?login=admin
www.freesimplecms.com/index.php?login=admin
www.freesimpleblog.com/index.php?login=admin
www.freesimplehost.com/index.php?login=admin
www.dustincowell.com/index.php?login=admin
www.everydayrapper.com/index.php?login=admin
www.rmsutherland.com/index.php?login=admin
www.tabletidbits.com/index.php?login=admin
|

matches [

# Login page # Form HTML
{ :text=>"<tr><td><input type='submit' name ='submit' value ='Login'>&nbsp;</td></form><form action='/index.php?logout=logout' method='post'><td>&nbsp;<input type='submit' name ='submit' value ='Cancel'></td></tr></table></form><p>[<a href='/index.php?page=login&request=forgot_password&include=admin_login.inc'><font color='" },

# Powered by text
{ :text=>"Powered by <a href='http://www.freesimplesoft.com'><font color='#FFFFFF'>Free Simple Software</font></a> (<a href='http://www.freesimplecms.com'><font color='#FFFFFF'>Free Simple CMS</font></a> / <a href='http://www.freesimpleshop.com'><font color='#FFFFFF'>Free Simple Shop</font></a> / <a href='http://www.freesimpleblog.com'><font color='#FFFFFF'>Free Simple Blog</font></a> / <a href='http://www.freesimplehost.com'><font color='#FFFFFF'>Free Simple Host</font></a>)" },

]

end

