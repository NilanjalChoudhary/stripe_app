class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    drop_table :products

    create_table :products do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end