# frozen_string_literal: true

class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string  :name,            null: false
      t.text    :description,     null: false
      t.text    :location,        null: false
      t.decimal :longitude,       null: false, precision: 10, scale: 6
      t.decimal :latitude,        null: false, precision: 10, scale: 6
      t.integer :bathroom_count,  null: false
      t.integer :bedroom_count,   null: false
      t.integer :max_guest_count, null: false

      t.timestamps
    end
  end
end
