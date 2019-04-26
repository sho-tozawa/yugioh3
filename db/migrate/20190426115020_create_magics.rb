class CreateMagics < ActiveRecord::Migration[5.2]
  def change
    create_table :magics do |t|
      t.string :name, :null => false
      t.text :effect, :null => false

      t.timestamps
    end
  end
end
