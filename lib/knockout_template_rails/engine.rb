require "active_support/ordered_options"

module KnockoutTemplateRails
  class Railtie < Rails::Engine
    config.knockout_templates = ActiveSupport::OrderedOptions.new
    config.knockout_templates.prefix = ""

    initializer "sprockets.knockout_templates", :after => "sprockets.environment", :group => :all do |app|
      next unless app.assets
      app.assets.register_engine(".khtml", KnockoutTemplate)
    end
  end
end
