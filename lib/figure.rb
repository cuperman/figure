require 'figure/errors'
require 'figure/version'

module Figure
  Filenames = {
    textmate: '.tm_properties'
  }

  class << self
    def filename_for app_name
      app_sym = app_name.downcase.to_sym
      raise Errors::UnknownApplication, "Unknown application: '#{app_name}'" unless Filenames.key? app_sym
      Filenames[app_sym]
    end

    def config_for filename
      filepath = File.join(File.dirname(__FILE__), '../templates', filename)
      raise Errors::UnknownFilename, "Unknown filename: '#{filename}'" unless File.exists? filepath
      File.read filepath
    end
  end
end
