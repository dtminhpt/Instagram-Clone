class Photo < ActiveRecord::Base
	has_many :comments
	attr_accessor :url
	mount_uploader :url, PhotoUploaderUploader
end
