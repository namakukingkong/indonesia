class CreateRegencies < ActiveRecord::Migration[5.1]
  def change
    create_table :regencies, :id => false do |t|
      t.string :id, limit: 4, null: false, primary_key: true
      t.string :name
      t.string :province_id, limit: 2, null: false

      t.timestamps
    end
    add_index :regencies, :province_id
  end
end
