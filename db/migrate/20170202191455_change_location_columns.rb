class ChangeLocationColumns < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        change_table :locations do |t|
          t.remove :name
        end
        add_column :locations, :weather, :string
      end
      dir.down do
        change_table :locations do |t|
          t.remove :weather
        end
        add_column :locations, :name, :string
      end
    end
  end
end
