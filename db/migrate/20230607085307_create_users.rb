class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :username
      t.string :email
      t.integer :phone
      t.text :password_digest
      t.timestamps
    end
  end
end
