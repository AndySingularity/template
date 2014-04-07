source 'https://rubygems.org'

ruby '2.1.0'
gem 'rails', '4.0.2'

# Servers
gem 'puma'
gem 'unicorn'

# Auth
gem 'devise'
gem 'cancan'

# ORM
# gem 'pg'
gem 'mysql2'

# Forms
gem 'simple_form'
gem 'nested_form'

# Assets
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'slim'
gem 'sass-rails', '~> 4.0.0'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 1.2'

# Other gems
gem 'paperclip'
gem 'kaminari'
# gem 'bootstrap-kaminari-views'
# gem 'debugger'
gem 'holder_rails' # Гем для 'временных' изображений любого размера
gem 'flutie' # Готовый хелпер под заголовки. https://github.com/thoughtbot/flutie
gem 'annotate' # Аннотации в моделях. https://github.com/ctran/annotate_models
gem 'breadcrumbs_on_rails' # => Хлебные крошки

# gems for tests
group :test do
	gem 'rspec-rails'
	gem 'selenium-webdriver'
	gem 'capybara'
end

group :development do
	gem 'better_errors'
	gem 'capistrano'
	gem 'meta_request'
end


group :production do
	gem 'rails_12factor'
	gem 'google-analytics-rails'
end


group :doc do
	gem 'sdoc', require: false
end
