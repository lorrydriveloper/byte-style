module Byte
  module Dev
    VERSION_PATH = 'lib/byte/dev/version.yml'.freeze
    CURRENT_VERSION = if File.exist?(VERSION_PATH)
      File.read(VERSION_PATH).match('\d+.\d+.\d+').to_s
    else
      '0.0.0'
    end

    module Version
      STRING = ENV['RELEASE_VERSION'] || CURRENT_VERSION

      ARRAY = STRING.split('.').map(&:to_i)
      MAJOR = ARRAY[0]
      MINOR = ARRAY[1]
      TINY  = ARRAY[2]
      PRE   = ARRAY[3]
    end
    VERSION = Version::STRING
  end
end
