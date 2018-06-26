class CreateVillages < ActiveRecord::Migration[5.1]
  def change
    create_table :villages, :id => false do |t|
      t.string :id, limit: 10, null: false, primary_key: true
      t.string :name
      t.string :district_id, limit: 7, null: false

      t.timestamps
    end
    add_index :villages, :district_id
  end
end
