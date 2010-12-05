module FormtasticCocoon
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc "This generator installs the javascript needed for formtastic_cocoon"

      def copy_the_javascript
        copy_file "formtastic_cocoon.js", "public/javascripts/formtastic_cocoon.js"
      end

    end
  end
end