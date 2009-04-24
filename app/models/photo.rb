class Photo < ActiveRecord::Base
	file_column	:image, :magick => {
				:versions => {
				  :thumb => "100x100>"
				  }
			    }
	validates_presence_of :image

	def self.find_photos
		find(:all, :order => "image")
	end
end
