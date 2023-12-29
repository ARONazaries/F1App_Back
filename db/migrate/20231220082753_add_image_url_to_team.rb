class AddImageUrlToTeam < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :image, :string
  end
end
