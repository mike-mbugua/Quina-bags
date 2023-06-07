class CreateWomenWears < ActiveRecord::Migration[7.0]
  def change
    create_table :women_wears do |t|
      t.string :weartype
      t.string :image
      t.integer :price
      t.text :size
      t.boolean :available
      t.text :description

      t.timestamps
    end
  end
end
