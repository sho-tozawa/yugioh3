class AddLevelToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :level, :integer
  end
end
