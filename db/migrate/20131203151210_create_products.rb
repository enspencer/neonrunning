class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.decimal :price
      t.text :images, array: true, default: []
      t.text :materials
      t.text :description
      t.integer :sku
      t.text :size

      t.timestamps
    end
  end
end