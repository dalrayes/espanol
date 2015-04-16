class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.belongs_to :deck
    	t.text :word
    	t.text :definition

      t.timestamps null: false
    end
  end
end
