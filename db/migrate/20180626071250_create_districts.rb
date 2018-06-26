class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts, :id => false do |t|
      t.string :id, limit: 7, null: false, primary_key: true
      t.string :name
      t.string :poscode, limit: 6
      t.string :regency_id, limit: 4, null: false

      t.timestamps
    end
    add_index :districts, :regency_id
  end
end
