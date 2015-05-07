class WelcomeController < ApplicationController
  before_action :authorize_user
end
