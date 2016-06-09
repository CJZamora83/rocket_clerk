class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :seq_number
      t.string :entry_date
      t.string :summary
      t.string :schedule_date
      t.string :doc_link

      t.timestamps null: false
    end
  end
end
