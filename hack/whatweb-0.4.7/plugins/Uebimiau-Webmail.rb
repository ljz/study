##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Uebimiau-Webmail" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-12-29
version "0.1"
description "Uebimiau Webmail - Homepage: http://www.uebimiau.org/download.php"

# Google results as at 2011-01-29 #
# 41 for "Uebimiau Webmail v3.2.0-2.0" -disclosure

# Examples #
examples %w|
www.hostsalive.com/webmail/
www.nationalhotel-jerusalem.com/mail/
correopym.com/t-dah/
ismailmidi.com/webmail/index.php
webmail.edeinternet.com/balder/
sanjeevanicbccusa.com/mail/
www.hippodaycare.com/webmail/
www.rufino.eti.br/webmail/
webmail.lukas23.de/
www.danito.com/webmail/
www.patricetankard.com/webmail/index.php
www.mda.cinvestav.mx/webmail/
madisehpub.ir/mail/
|

# Matches #
matches [

# Version Detection
{ :version=>/					<td class="info">Uebimiau Webmail v([^<]{1,15})<\/td>/ },

# Install Page # Default Title
{ :text=>'<title>Uebimiau ( Installer )</title>', :module=>"Install Page" },

# Install Page # Login message
{ :text=>'<p>You are about to re-install Uebimiau Webmail on you system.<br>Thanks to log with your UebiMiau Admin ID and password to continue.</p>', :module=>"Install Page" },

# Default JavaScript HTML
{ :text=>'<script type="text/javascript" src="themes/default/js/webmail.js"></script>' },

# Default Meta Keywords
{ :text=>'<meta name="keywords" content="uebimiau,tdah,uebimiau,webmail,email,mail,client,application,pop3,php,open     source,free,sourceforge,development" />', :certainty=>75 },

]

end

