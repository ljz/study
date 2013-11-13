##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-02-15 #
# Updated version detection
##
Plugin.define "Netref" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-09-03
version "0.2"
description "homepage: http://www.netref.net/"

# Google results as at 2011-02-15 #
# 197 for "powered by Netref"
# 29 for "Powered by Netref 5"

# Examples #
examples %w|
annuaires.massage-cachemirien.org
circul.arts.free.fr/annuaire/
transport.annugratuit.net
www.gratuit-du-net.net
www.2aazaide.com/annuaire/
www.puget-passion.fr/Annuaire/
www.entrenous74.com/netref/
www.vacances-faciles.net/annuaire/
www.novazis.com
www.autocross-france.net/Divers/Netref4/
|

# Matches #
matches [

# HTML Comment
{ :text=>'Annuaire Netref : http://www.netref.net' },

# Version Detection # Powered by text
{ :version=>/<a href=['|"]?http:\/\/www.netref.(fr|net)['|"]? class=['|"]?lienp['|"]?[^>]*>Powered by Netref ([\d\.]+) &copy; [0-9]{4}<\/a>/, :offset=>1 },

]

end

