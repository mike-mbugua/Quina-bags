class CreateWomenWears < ActiveRecord::Migration[7.0]
  def change
    create_table :women_wears do |t|

      t.timestamps
    end
  end
end
