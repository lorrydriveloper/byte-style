require 'byte/style/version'

module Byte
  module Style
    # Nothing to see here.
    class StylesGenerator < Rails::Generators::Base
      desc 'This generator creates an initializer file at config/initializers'
      def create_initializer_file
        create_file('.rubocop.yml', '# Add initialization content here')
        create_file('.prettierrc.yml', '# testing this.')
      end
    end
  end
end
