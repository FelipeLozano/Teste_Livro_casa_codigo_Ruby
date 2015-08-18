class Link < ActiveRecord::Base
	validates_format_of :url , :with => %r[ˆhttps?://]i 

end	
