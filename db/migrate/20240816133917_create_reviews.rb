# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string  :user_name, null: false
      t.string  :title,     null: false
      t.text    :body,      null: false
      t.integer :stars,     null: false, scale: 1..5

      t.belongs_to :listing, foreign_key: true

      t.timestamps
    end
  end
end
