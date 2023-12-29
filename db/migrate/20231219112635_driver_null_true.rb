class DriverNullTrue < ActiveRecord::Migration[7.1]
  def change
    remove_reference :drivers, :team, null: false, foreign_key: true
    # add_reference :schedules, :user, null: false, foreign_key: true
  end
end
