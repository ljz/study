##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Antiboard" do
author "Andrew Horton"
version "0.1"

description "PHP forum. homepage (gone):http://www.resynthesize.com/code/antiboard.php."

examples %w|http://www.cultos.org/board/antiboard.php http://www.mishpouka.com/web/antiboard.php http://www.munichmela.de/php/main/bulletinboard.php www.abertillerycricket.com/board.php |

# inurl: antiboard.php
#  <form method="post" action="/antiboard/antiboard.php">
# <a href="http://www.resynthesize.com/code/antiboard.php">Powered by antiboard 0.7.2</a>

matches [
{:name=>"inurl", :ghdb=>"inurl:antiboard.php" },
{:name=>"powered by", :text=>"<a href=\"http://www.resynthesize.com/code/antiboard.php\">Powered by antiboard" }
]

end

