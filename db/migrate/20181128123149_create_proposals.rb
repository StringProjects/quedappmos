class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.boolean :accepted
      t.string :comment
      t.integer :user_id


      t.timestamps
    end
  end
end
