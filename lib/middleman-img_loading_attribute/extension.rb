# Require core library
require 'middleman-core'

class Middleman::ImgLoadingAttribute < ::Middleman::Extension
  option :loading, 'auto', 'A value of "loading" attribute in <img> tag'

  def initialize(app, options_hash={}, &block)
    # Call super to build options from the options_hash
    super

    # Require libraries only when activated
    # require 'necessary/library'

    # set up your extension
    # puts options.my_option
  end

  def after_configuration
    # Do something
  end

  def after_build(builder)
    files = Dir.glob(File.join(app.config[:build_dir], "**", "*.html"))
    files.each do |file|
      contents = File.read(file)
      replaced = contents.gsub(%r[<img], "<img loading=\"#{options[:loading]}\"")
      File.open(file, 'w') do |f|
        f.write replaced
      end
    end
  end

  # A Sitemap Manipulator
  # def manipulate_resource_list(resources)
  # end

  # helpers do
  #   def a_helper
  #   end
  # end
end
