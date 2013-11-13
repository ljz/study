##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "ContentXXL" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-03
version "0.1"
description "ContentXXL - CMS [German] - Requires: .NET - Homepage: http://www.contentxxl.de/"

# Examples #
examples %w|
www.contentxxl.de
www.contentxxl.com
www.futurexxl.de
www.glauxsoft.com
www.evidence.gs
www.fallfuehrung.ch
|

# Matches #
matches [

# Version Detection # Meta Generator
{ :version=>/<meta name="generator" content="contentXXL Business Content Management System  ([^\(]+)\([^\)]+\) \/ contentXXL International GmbH \/ www.contentxxl.de" [\/]?>/ },

# .NET Version Detection # Meta Generator
{ :string=>/<meta name="generator" content="contentXXL Business Content Management System  [^\(]+\(([^\)]+), [^,^>]+, (Release|Debug)\) \/ contentXXL International GmbH \/ www.contentxxl.de" [\/]?>/ },


]

end


