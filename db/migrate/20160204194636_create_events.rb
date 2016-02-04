class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :description
      t.string :venue, null: false
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
