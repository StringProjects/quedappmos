class Proposal < ApplicationRecord

	validates :accepted, presence: true
	validates :comment, presence: true

	belongs_to :user
	

	has_many :proposal_possibles
	has_many :possibles, through: :proposal_possibles


end
