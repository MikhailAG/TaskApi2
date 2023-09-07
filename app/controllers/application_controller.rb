class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: ENV['HTTP_USER'], password: ENV['HTTP_PASSWORD']
end
