class AddPropertyRefToRailways < ActiveRecord::Migration[5.2]
  def change
    add_reference :railways, :property, foreign_key: true
  end
end
