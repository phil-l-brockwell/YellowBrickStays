# frozen_string_literal: true

class Listing < ApplicationRecord
  has_many_attached :images
  has_many :reviews, dependent: :destroy
end
