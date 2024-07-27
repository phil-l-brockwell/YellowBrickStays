# frozen_string_literal: true

module Shared
  module GoogleMap
    DATA_CONTROLLER = 'google-map'

    def google_map(options = {})
      return unless Rails.application.credentials.google_maps_api_key

      longitude = options.fetch(:longitude)
      latitude = options.fetch(:latitude)
      style = options.fetch(:class, '')

      content_tag(:div, class: style, data: { controller: DATA_CONTROLLER, longitude:, latitude: }) do
        content_tag(:div, nil, class: 'h-full', data: { "#{DATA_CONTROLLER}-target" => :display })
      end
    end
  end
end
