##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Amiro-CMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-04
version "0.1"
description "Amiro.CMS is a top-notch website development and content management system with several dynamic features and a user-friendly interface. - homepage: http://www.amirocms.com/"

# 235 results for "powered by Amiro.CMS" @ 2010-09-04
examples %w|
unlimited-usa.com
manual.evolvesystems.ws
horsnaroundstables.com
truessence.net
www.dancinonbroadway.com/shop-dob/
www.cjscreativecottage.com
www.teamworksauburn.com
www.teamworksnorthboro.com
www.franchisemasters.com
www.shop4cha.com
www.onekapetresort.com
www.imperialwall.com
www.mccartygroup.com
www.micronmetalworks.com
www.bredahlinc.com/service
www.nomoldsrequired.com
www.nelsonremodelingandconstruction.com
www.evolve-systems.com
asiaskygate.aero/en/
|

matches [

# Powered by text
{ :text=>"<a href='http://www.amirocms.com' target=_blank>Powered by: Amiro CMS</a>" },
{ :text=>'<a href="http://www.amirocms.com/" target=_blank><FONT size=1><B>Powered by: Amiro CMS</B></FONT></A>' },

]


# Meta generator over multiple lines:
# <meta name="GENERATOR" content="
# -= Amiro.CMS (c) =- 
# www.amirocms.com 
# ">

def passive
        m=[]

        if @body =~ /<meta name="GENERATOR" content="/ and @body =~ / -= Amiro.CMS \(c\) =- / and (@body =~ / www.amiro.ru / or @body =~ / www.amirocms.com /)
                m << {:name=>"multi-line meta generator"}
        end

        m

end


end

