class CreateProposalPossibles < ActiveRecord::Migration[5.2]
  def change
    create_table :proposal_possibles do |t|
    	t.integer :proposal_id
    	t.integer :possible_id
    end
  end
end

