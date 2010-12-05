require 'formtastic_cocoon/view_helpers'

module FormtasticCocoon
  class Railtie < ::Rails::Railtie

    config.before_initialize do
      config.action_view.javascript_expansions[:formtastic_cocoon] = %w(formtastic_cocoon)
    end

    # configure our plugin on boot. other extension points such
    # as configuration, rake tasks, etc, are also available
    initializer "on_the_spot.initialize" do |app|
      ActionView::Base.send :include, FormtasticCocoon::ViewHelpers
    end

  end
end