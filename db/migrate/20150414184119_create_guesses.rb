class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
    	t.belongs_to :card
    	t.belongs_to :round
    	t.boolean :correct

      t.timestamps null: false
    end
  end
end
