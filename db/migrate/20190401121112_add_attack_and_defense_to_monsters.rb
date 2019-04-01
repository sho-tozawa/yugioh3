class AddAttackAndDefenseToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :attack, :integer
    add_column :monsters, :defense, :integer

  end
end
