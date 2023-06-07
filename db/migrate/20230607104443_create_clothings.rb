class CreateClothings < ActiveRecord::Migration[7.0]
  def change
    create_table :clothings do |t|
      t.string :genderType
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
