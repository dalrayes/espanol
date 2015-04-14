class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
    	t.integer :percent_score
    	t.belongs_to :user
    	t.belongs_to :deck

      t.timestamps null: false
    end
  end
end
