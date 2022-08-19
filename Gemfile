source "https://rubygems.org"

ruby "~> 2.7"

# In short:
#
# - `bundle install` to install gems using Bundler in Ruby.
# - `bundle exec jekyll serve` to start Jekyll server locally.
# - `bundle update` to update all gems.
# - `bundle lock --update` to update Gemfile.lock.

gem "github-pages", "227", group: :jekyll_plugins
# i.e. Not gem "jekyll"

# The github-pages gem already includes the following dependencies:
# - gem "minima"
# - gem "jekyll-feed"
# - gem "kramdown-parser-gfm"
# Therefore, you don't need to include them in this Gemfile.
# Run `bundle exec github-pages versions` to see the list.

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0", :install_if => Gem.win_platform?

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
