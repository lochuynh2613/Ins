class Post < ApplicationRecord
	validates :user_id, presence: true

	has_attached_file :image, presence: true
	has_attached_file :image, styles:{:med => "640x640"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
	has_many :comments, dependent: :destroy
	belongs_to :user
end
