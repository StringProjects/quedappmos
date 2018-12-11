class CreatePossibles < ActiveRecord::Migration[5.2]
  def change
    create_table :possibles do |t|
    	t.datetime :date

      t.timestamps
    end
  end
end
