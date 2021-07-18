source "https://rubygems.org"

ruby "~> 2.7"

# In short:
#
# - `bundle install` to install gems using Bundler in Ruby.
# - `bundle exec jekyll serve` to start Jekyll server locally.
# - `bundle update` to update all gems.
# - `bundle lock --update` to update Gemfile.lock.

gem "github-pages", "215", group: :jekyll_plugins
# i.e. Not gem "jekyll"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0", :install_if => Gem.win_platform?

# The github-pages gem already includes the following dependencies:
#
# - gem "jekyll-feed"
# - gem "kramdown-parser-gfm"
# - gem "minima"
#
# Therefore, you don't need to include them in this Gemfile.
# Run `bundle exec github-pages versions` to see the list.

# Helpful to avoid error about missing Javascript runtime.
gem "mini_racer", "~> 0.4.0"
