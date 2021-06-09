class CreateProperty < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :property
      t.integer :rent
      t.text :address
      t.integer :building
      t.text :remarks
    end
  end
end
