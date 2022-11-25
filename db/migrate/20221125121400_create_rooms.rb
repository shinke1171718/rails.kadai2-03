class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :room_Introduction
      t.integer :price
      t.string :address

      t.timestamps
    end
  end
end
