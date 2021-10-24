require 'byte/style/version'
require 'rails/generators'
module Byte
  module Style
    class InstallGenerator < Rails::Generators::Base
      desc 'This generator creates a style files for your project'
      source_root File.expand_path('styles_config', __dir__)

      def copy_initializer_file
        copy_file('.prettierrc.yml', '.prettierrc.yml')
        copy_file('.rubocop.yml', '.rubocop.yml')
      end
    end
  end
end
