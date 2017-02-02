class ChangeQuantityType < ActiveRecord::Migration[5.0]
  def change

    reversible do |dir|
      dir.up do
        change_table :parts do |t|
          t.change :quantity, :decimal
        end
      end
      dir.down do
        change_table :parts do |t|
          t.change :quantity, :integer
        end
      end
    end
  end
end
