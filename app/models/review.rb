# frozen_string_literal: true

class Review < ApplicationRecord
  has_one_attached :image

  def abbreviated_body(length: 150)
    return body if body.length <= length

    "#{body.first(length)}..."
  end
end
