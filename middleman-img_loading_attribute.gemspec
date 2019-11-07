$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-img_loading_attribute"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yusuke Nakamura"]
  s.email       = ['yusuke1994525@gmail.com']
  s.homepage    = 'https://github.com/unasuke/middleman-img_loading_attribute'
  s.summary     = 'Specify "loading" attribute value to generated HTML from middleman'
  s.description = 'Specify "loading" attribute value to generated HTML from middleman'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core")
  s.add_runtime_dependency("middleman-cli")
  
  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end