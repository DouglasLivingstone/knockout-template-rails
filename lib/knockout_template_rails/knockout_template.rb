require 'sprockets'
require 'tilt'
require 'action_view'
require 'action_view/helpers'

module KnockoutTemplateRails
  class KnockoutTemplate < Tilt::Template

    def self.default_mime_type
      'text/html'
    end

    def compile!
        puts "compiled"
    end

    def prepare
      @prefix = normalize_prefix(Rails.configuration.knockout_templates.prefix)
    end

    def evaluate(scope, locals, &block)
      %{<script type="text/html" id="#{template_name(scope)}">#{data}</script>}
    end

    private

    def normalize_prefix(prefix)
      if prefix.respond_to?(:length) && prefix.length > 0
        prefix = prefix[1, prefix.length - 1] if prefix.start_with?("/")
        prefix += "/" unless prefix.end_with?("/")
      end

      prefix
    end

    def template_name(scope)
      scope.logical_path.sub(@prefix, "")
    end
  end
end
