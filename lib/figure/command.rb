module Figure
  class Command
    Filenames = {
      textmate: '.tm_properties'
    }

    class UnknownApplication < StandardError; end
    class UnknownFilename < StandardError; end

    class << self
      def filename_for app_name
        app_sym = app_name.downcase.to_sym
        raise UnknownApplication unless Filenames.key? app_sym
        Filenames[app_sym]
      end

      def config_for filename
        filepath = File.join(File.dirname(__FILE__), '../../templates', filename)
        raise UnknownFilename unless File.exists? filepath
        File.read filepath
      end

      def create_file filename, contents
        File.open filename, 'w' do |f|
          f.write contents
        end
      end

      def default_editor
        ENV['EDITOR'] || 'vi'
      end

      def edit_file filename
        system "#{default_editor} #{filename}"
      end

      def execute app_name
        filename = filename_for app_name

        if !File.exists? filename
          config = config_for filename
          create_file filename, config
        end

        edit_file filename
      end
    end
  end
end
