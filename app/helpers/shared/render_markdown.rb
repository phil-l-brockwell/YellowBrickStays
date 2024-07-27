# frozen_string_literal: true

require 'redcarpet'

module Shared
  module RenderMarkdown
    def render_markdown(text)
      sanitize(
        redcarpet_instance.render(text),
        attributes: [*link_attributes.keys, :href].map(&:to_s)
      )
    end

    private

    def redcarpet_instance
      Redcarpet::Markdown.new(
        Redcarpet::Render::HTML.new(
          no_styles: true,
          escape_html: true,
          link_attributes:
        )
      )
    end

    def link_attributes
      {
        class: 'italic hover:text-primary-light',
        target: :_blank,
        rel: :noopener
      }
    end
  end
end
