source 'http://rubygems.org'

gem 'rails', '3.0.0.rc'
gem 'sqlite3-ruby', :require => 'sqlite3'

group :test do
  gem "rspec"
  gem "rspec-rails",        :git => "git://github.com/rspec/rspec-rails.git"
end

group :development, :test do
  gem "fixjour",            :git => "git://github.com/nakajima/fixjour.git",
                            :ref => "509fafb2c8e3f277bd5f1200e23b66542b0b953c"
  gem "ffaker"
end
