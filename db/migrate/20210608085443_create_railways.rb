class CreateRailways < ActiveRecord::Migration[5.2]
  def change
    create_table :railways do |t|
      t.text :railway
      t.text :station
      t.integer :distance
    end
  end
end
