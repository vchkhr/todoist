# frozen_string_literal: true

require 'dotenv/load'
require 'net/http'
require 'json'
require 'date'

require_relative 'api/request'
require_relative 'env/check_env_required'
require_relative 'env/check_env_optional'
require_relative 'controllers/projects'
require_relative 'controllers/items'
require_relative 'controllers/print_items'

return unless check_env_required
return unless check_env_optional
return unless api_request
return unless projects

items
print_items
