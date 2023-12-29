class AddTeamAndNumberImgToDriver < ActiveRecord::Migration[7.1]
  def change
    add_column :drivers, :number_img, :string
    add_column :drivers, :team_name, :string
  end
end
