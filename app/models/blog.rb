class Blog < ActiveRecord::Base
	has_many :posts
	has_many :owners
	has_many :users, :through => :owners
	has_many :messages, :through => :posts

	validates :name, presence: true, length: { minimum: 3 }
	validates :description, presence: true, length: { minimum: 15 }
end
