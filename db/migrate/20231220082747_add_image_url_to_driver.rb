class AddImageUrlToDriver < ActiveRecord::Migration[7.1]
  def change
    add_column :drivers, :image, :string
  end
end
