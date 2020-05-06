class Post < ApplicationRecord
	has_many :people
	validates :name, presence: true, length: {maximum: 256} 
end
