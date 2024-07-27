# frozen_string_literal: true

require_relative 'shared/google_map'
require_relative 'shared/google_map_script'
require_relative 'shared/render_markdown'

module ApplicationHelper
  include ::Shared::GoogleMapScript
  include ::Shared::GoogleMap
  include ::Shared::RenderMarkdown
end
