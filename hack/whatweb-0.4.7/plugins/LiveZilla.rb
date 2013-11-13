##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "LiveZilla" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-24
version "0.1"
description "LiveZilla, the Next Generation Live Help and Live Support System connects you to your website visitors. Use LiveZilla to provide Live Chats and monitor your website visitors in real-time. - Homepage: http://www.livezilla.net/"

# Google results as at 2011-03-24 #
# 14 for "LiveZilla - Freeware Live Support" intitle:"LiveZilla - Freeware Live Support - http://www.livezilla.net"
# 12 for filetype:php inurl:server.php "Thank you for using LiveZilla!"

# Examples #
examples %w|
www.livezilla.net/livezilla/server.php
www.7only.com/chat/server.php
www.kovah.de/livezilla/
www.cherche-prof.com/livezilla/server.php
carambatours.webcindario.com/livezilla/server.php
fribook.eu/support/server.php
netmoney.az/livezilla/server.php
aday.gediz.edu.tr/onlineDestek/server.php
www.snoptic.com/LiveZilla/_internal/
www.webfree.ir
compuserhn.com/compuserlive/server.php
jorsat.co.cc/livezilla/server.php
www.irsa-group.com/live/server.php
www.creativ-design.eu.ki/support/server.php
livechat.matbao.vn
www.hostingneo.com/
www.hostingneo.com/BKP_CLND/
live.sellnbuyproperties.com/server.php
paradisecruises.vn/livesupport/server.php
www.bestpret.ro/livezilla/server.php
atendimento.acesseloja.com.br/server.php
www.suprisulinfo.com.br/chat/server.php
blazewhm.co.uk/blazechat/server.php
www.gosoft.com.br/livezilla/server.php
|

# Matches #
matches [

# Version Detection # registered trademark link
{ :version=>/<td colspan="2" width="400" align="center" (class|id)="lz_index_light_text">LiveZilla is a registered trademark<br>of LiveZilla GmbH<br><br>Version ([\d\.]+)<\/td>/, :offset=>1 },

# server.php # Thank you text
{ :text=>'<td><br><br><br><strong>Thank you for using LiveZilla!</strong></td>' },

# HTML Comment and div id
{ :text=>'<!-- http://www.LiveZilla.net Tracking Code --><div id="livezilla_tracking" style="display:none"></div>' },

# Error Page # address
{ :text=>'<address><a href="http://www.livezilla.net" target="_blank">LiveZilla - Freeware Live Support</a></address>' },

# Meta Author
{ :certainty=>25, :text=>'<meta name="author" content="LiveZilla GmbH">' },

# Error Page # Title
{ :text=>'<title>LiveZilla - Freeware Live Support - http://www.livezilla.net</title>' },

]

end


