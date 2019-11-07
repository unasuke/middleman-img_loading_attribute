# Middleman::ImgLoadingAttribute
[![Build Status on GitHub Actions](https://github.com/unasuke/middleman-img_loading_attribute/workflows/test/badge.svg)](https://github.com/unasuke/redcarpet-render-html_lazy_img/actions)
![RubyGem version](https://badgen.net/rubygems/v/middleman-img_loading_attribute)
![MIT License](https://badgen.net/github/license/unasuke/middleman-img_loading_attribute)

Specify "loading" attribute value to generated HTML from Middleman
You can choose "lazy", "auto", and "eager" to loading attribite by configuration.

## Installation
Add this line to your Middleman project's Gemfile:

```ruby
gem 'middleman-img_loading_attribute'
```

And then execute:

```shell
$ bundle
```

## Usage
Activate `img_loading_attribute` in your `config.rb`.

### loading="lazy"
```ruby
activate :img_loading_attribute do |c|
  c.loading = 'lazy'
end
```

### loading="auto"
```ruby
activate :img_loading_attribute do |c|
  c.loading = 'auto'
end

# If no configuration specified, choose "auto" as default value
activate :img_loading_attribute
```

### loading="eager"
```ruby
activate :img_loading_attribute do |c|
  c.loading = 'eager'
end
```

## Development


To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in gemspec, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/unasuke/middleman-img_loading_attribute. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Redcarpet::Render::HTMLLazyImg project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/unasuke/middleman-img_loading_attribute/blob/master/CODE_OF_CONDUCT.md).
