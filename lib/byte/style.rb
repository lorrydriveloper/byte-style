require 'byte/style/version'
require 'rails/generators/base'
module Byte
  module Style
    class DevGenerator < Rails::Generators::Base
      desc 'This generator creates a style files for your project'
      def create_initializer_file
        create_file('.rubocop.yml', '# Add initialization content here')
        create_file('.prettierrc.yml', '# testing this.')
      end
    end
  end
end
