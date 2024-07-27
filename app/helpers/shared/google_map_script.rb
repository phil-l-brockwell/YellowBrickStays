# frozen_string_literal: true

module Shared
  module GoogleMapScript
    def google_map_script
      return unless Rails.application.credentials.google_maps_api_key

      javascript_include_tag(
        "https://maps.googleapis.com/maps/api/js?key=#{Rails.application.credentials.google_maps_api_key}",
        async: true
      )
    end
  end
end
