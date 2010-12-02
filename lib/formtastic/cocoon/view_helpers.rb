module Formtastic
  module Cocoon
    module ViewHelpers

      def link_to_remove_association(name, f)
        is_dynamic = f.object.new_record?
        f.hidden_field(:_destroy) + link_to(name, '#', :class => "remove_fields #{is_dynamic ? 'dynamic' : 'existing'}")
      end

      def render_association(association, f, new_object)
        f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
          render(association.to_s.singularize + "_fields", :f => builder, :dynamic => true)
        end
      end
      safe_helper :render_association

      def link_to_add_association(name, f, association)
        new_object = f.object.class.reflect_on_association(association).klass.new
        model_name = new_object.class.name.underscore
        hidden_div = content_tag('div', :id => "#{model_name}_fields_template", :style => "display:none;") do
          render_association(association, f, new_object)
        end
        hidden_div.html_safe + link_to(name, '#', :class => 'add_fields', :'data-association' => association.to_s.singularize)
      end

    end
  end
end