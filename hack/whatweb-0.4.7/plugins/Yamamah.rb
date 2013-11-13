##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Yamamah" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-01-30
version "0.1"
description "Yamamah - Free photo Gallery - homepage: www.yamamah.org/home/"

# Examples #
examples %w|
www.gam-adv.com/y/index.php
www.pro4arb.net/car/
police-clup-iq.com/albom/
www.elquds.ps/photo/
www.orbinanet.com/album/
www.top-ben.com/gallery/
www.algbyat1.com/img/
www.h5l5.com/pic/
www.bin-nafe.net/album/
xn--mgbqr5cjvt.com
www.imtroodi.com/Gallery/
www.alaskri.com/photo/
|

# Google results as at 2011-01-29 #
# 89 for "Powered By : Yamamah Version 1.00" -dork -exploit 

# Matches #
matches [

# Version Detection # Powered by text
{ :version=>/<p>Copyright &copy; [\d]{4}  All rights reserved. Powered By : <a href="http:\/\/www.yamamah.org" title="Yamamah">Yamamah Version ([\d\.]{1,5})<\/a><\/p>/ },

# Meta Author
{ :text=>'<meta name="Author" content="Majed Al-Mulihani - majed@modernsys.net" />' },

# Meta Description
{ :text=>'<meta name="Description" content="Yamamah is free photo gallery cms" />' },

]

end


