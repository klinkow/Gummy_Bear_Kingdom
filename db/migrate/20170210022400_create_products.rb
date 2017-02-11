class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :cost, :float
      t.column :coo, :string
      t.timestamps
    end
  end
end
