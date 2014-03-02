class SitemarxModel < ActiveRecord::Base
	
	
	validates :name, presence: true, length: {minimum: 2, too_short: "must be atleast 2"}
	validates :url, presence: true
	
	
	
end
