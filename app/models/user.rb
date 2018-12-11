class User < ApplicationRecord
	has_one :proposal

	validates :name, presence: true, 
				uniqueness: true
	validates :email, presence: true
end
