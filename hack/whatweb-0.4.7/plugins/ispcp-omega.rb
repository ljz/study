##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##


# Version 0.2
# removed :probability

Plugin.define "ispCP-Omega" do
author "Andrew Horton"
version "0.2"
description "PHP opensource, virtual hosting system homepage: http://www.isp-control.net/"
examples %w| 202.6.117.217 |

# <title>ispCP Omega a Virtual Hosting Control System</title>
# Powered by <a class="login" href="http://www.isp-control.net" target="_blank">ispCP Omega</a>
# themes/omega_original/images/login/login_lock.jpg


matches [
{:text=>'<title>ispCP Omega a Virtual Hosting Control System</title>' },
{:text=>'Powered by <a class="login" href="http://www.isp-control.net" target="_blank">ispCP Omega' },
{:text=>'themes/omega_original/images/login/login_lock.jpg' }
]

end

