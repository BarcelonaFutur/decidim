# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION
DECIDIM_VERSION = { git: "https://github.com/decidim/decidim", tag: "release/0.23-stable" }

gem "decidim", DECIDIM_VERSION

# gem "decidim-consultations", "0.20.0"
# gem "decidim-initiatives", "0.20.0"

gem "puma"
gem "bootsnap", "~> 1.3"
gem "uglifier", "~> 4.1"

gem "faker", "~> 1.9"

gem "geocoder", "~> 1.6.1"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  gem 'fog-aws'
  gem 'dalli'
  gem 'sendgrid-ruby'
  gem 'newrelic_rpm'
  gem 'lograge'
  gem 'sentry-raven'
  gem 'sidekiq'
end
