class Api::BaseController < ApplicationController
  protect_from_forgery with: :null_session
#   prepend_before_action :authenticate
  respond_to :json
end
  