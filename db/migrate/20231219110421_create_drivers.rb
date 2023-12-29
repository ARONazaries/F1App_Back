class CreateDrivers < ActiveRecord::Migration[7.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :surname
      t.references :team, null: false, foreign_key: true
      t.integer :wins

      t.timestamps
    end
  end
end
