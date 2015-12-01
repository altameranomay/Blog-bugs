class Post < ActiveRecord::Base
	has_many :comments
	before_save :check_caps

	validates :name, presence: true
	validates :context, presence: true

	def check_caps
		name.capitalize
	end

end
