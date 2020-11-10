class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception, if: -> { request.format.html? }
  protect_from_forgery with: :null_session
end
