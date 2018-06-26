class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces, :id => false do |t|
      t.string :id, limit: 2, null: false, primary_key: true
      t.string :name

      t.timestamps
    end
  end
end
