class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :seq_number
      t.date :entered_on, default: Date.today
      t.date :scheduled_on
      t.string :summary
      t.string :doc_url
      t.references :case

      t.timestamps null: false
    end
  end
end
