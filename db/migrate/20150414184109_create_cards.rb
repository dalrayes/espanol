class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.belongs_to :deck
    	t.text :question
    	t.string :answer

      t.timestamps null: false
    end
  end
end
