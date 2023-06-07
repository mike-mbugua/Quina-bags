class CreateMenWears < ActiveRecord::Migration[7.0]
  def change
    create_table :men_wears do |t|

      t.timestamps
    end
  end
end
