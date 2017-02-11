class AddImageToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :image, :string
  end
end
