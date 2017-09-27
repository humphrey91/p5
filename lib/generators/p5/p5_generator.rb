require 'rails/generators/base'

module P5
  class P5Generator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    argument :layout_name, :type => :string, :default => "application"

  def generate_layout
    copy_file "sketch.js", "app/assets/javascripts/sketch.js"
    template "index.html.erb", "app/views/layouts/index.html.erb"
  end


  end
end
