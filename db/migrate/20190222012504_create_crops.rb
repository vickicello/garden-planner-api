class CreateCrops < ActiveRecord::Migration[5.2]
  def change
    create_table :crops do |t|
      t.string :name
      t.string :variety
      t.date :sow_by
      t.string :harvest
      t.integer :days_to_harvest
      t.integer :number_of_beds
      t.text :notes
      t.string :img_url, default: ""

      t.timestamps
    end
  end
end
