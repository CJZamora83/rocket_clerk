class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :number
      t.string :name
      t.string :venue
      t.string :matter_type
      t.string :lead_atty

      t.timestamps null: false
    end
  end
end
