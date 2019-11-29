# Require core library
require 'middleman-core'
require 'nokogiri'

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
      doc = Nokogiri::HTML(File.read(file))
      doc.css('img').each do |elem|
        next if elem.path.include?('pre') || elem.path.include?('code') || elem.path.include?('blockquote')

        elem['loading'] = options[:loading]
      end
      File.open(file, 'w') do |f|
        f.write doc.to_html
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
