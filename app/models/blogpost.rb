class Blogpost < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	
	validates :title, 
		:presence => true

	validates :content, 
		:presence => true

	validates :image,
		:presence => true
end
