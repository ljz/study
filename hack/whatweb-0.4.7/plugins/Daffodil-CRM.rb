##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Daffodil-CRM" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-04-02
version "0.1"
description "Daffodil CRM is a software that enables seamless coordination between sales, marketing, customer service, field support and other functions that handle customer contact for an enterprise. - Homepage: http://crm.daffodilsw.com/"

# Google results as at 2011-04-02 #
# 3 for "Daffodil" inurl:app=forgot_passwd

# Examples #
examples %w|
www.dis.edu.bd/vus/
erp.daffodilvarsity.edu.bd/vus/
203.190.10.145/green/
|

# Matches #
matches [

# Powered/Developed by text
{ :text=>'<div id="right_footer">Powered by Daffodil Software Ltd</div>' },
{ :text=>'<div id="right_footer">Design & Development by Daffodil Software Ltd</div>' },

# Forgot password link
{ :regexp=>/ href="\?app=forgot_passwd&amp;cmd=passwd_send">[^>]*Forgot Password\?<\/a><\/td>/ },

]

end


