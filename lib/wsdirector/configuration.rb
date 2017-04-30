require 'yaml'

module WSdirector
  class Configuration
    def self.load(script_yml)
      begin
        parse_script(load_from_yml(script_yml))
      rescue => error
        raise "Cofiguration load is failed, please check #{script_yml} - #{error}"
      end
    end

    def self.load_from_yml(script_yml)
      YAML.load_file(script_yml)
    end

    def self.parse_script(script)
    end
  end
end
