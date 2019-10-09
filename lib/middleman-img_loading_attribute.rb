require "middleman-core"

Middleman::Extensions.register :middleman-img_loading_attribute do
  require "my-extension/extension"
  MyExtension
end
