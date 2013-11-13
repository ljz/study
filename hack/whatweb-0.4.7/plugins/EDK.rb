##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "EDK" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-04
version "0.1"
description "EDK is an Open Source Killboard for EVE-Online, maintained by the EVE Development Network. Requirements: PHP >= version 5, the GD Library, MySQL >= version 5 - homepage: http://wiki.eve-id.net/EDK"

# 355 results for (inurl:alliance_detail | inurl:pilot_detail | inurl:corp_detail) @ 2010-09-04
examples %w|
bdeal-eve.info/kb/
cow.hosti.fi/kb/
killboard.blind-octopus.com
killboard.executive-outcomes.info
killboard.evekb.co.uk
kb.eve-iyi.com
kb2.wn-alliance.com
killboard.brick-squad.com
killboard.tgrads.com
myth.uk.easynet.net/fmjkb/
noir.pinacoderm.com/killboard
ontherocks-ice.com/kb/
www.a-kills.com
www.minmatar-militia.org/kb/
www.northern-coalition.com
|

matches [

# URL pattern
{ :ghdb=>"inurl:alliance_detail | inurl:pilot_detail | inurl:corp_detail" },

# Default menu option
{ :text=>'<div class="menu-caption">Kills &amp; losses</div>' },

# Table CSS class
{ :text=>'<tr class="kb-table-row-even">' },

# Unique anchor & URL fragment
{ :text=>'&amp;scl_id=39">Industrial Command Ship</a></b></td>' },

# HTML comment
{ :text=>'<!-- /killlistable.tpl -->' },

]

end

# An aggressive plugin could check default file paths

