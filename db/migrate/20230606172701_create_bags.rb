class CreateBags < ActiveRecord::Migration[7.0]
  def change
    create_table :bags do |t|
      t.string :type
      t.string :name
      t.string :image
      t.integer :price
      t.boolean :available
      t.text :description


      t.timestamps
    end
  end
end
