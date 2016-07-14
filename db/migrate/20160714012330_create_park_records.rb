class CreateParkRecords < ActiveRecord::Migration
  def change
    create_table :park_records do |t|
      t.datetime :date_details
      t.string :comments
      t.references :slot, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
