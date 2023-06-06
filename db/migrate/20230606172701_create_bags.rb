class CreateBags < ActiveRecord::Migration[7.0]
  def change
    create_table :bags do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
