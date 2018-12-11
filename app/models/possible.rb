class Possible < ApplicationRecord
	has_many :proposal_possibles
	has_many :proposals, through: :proposal_possibles
end
