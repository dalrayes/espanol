class CreateConjugations < ActiveRecord::Migration
  def change
    create_table :conjugations do |t|
      t.string :yo
      t.string :tu
      t.string :el_ella_usted
      t.string :nosotros
      t.string :vosotros
      t.string :ellos_ellas_ustedes
      t.belongs_to :card
    end
  end
end
