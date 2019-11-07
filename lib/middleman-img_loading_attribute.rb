require "middleman-core"

Middleman::Extensions.register :img_loading_attribute do
  require "middleman-img_loading_attribute/extension"
  ::Middleman::ImgLoadingAttribute
end
