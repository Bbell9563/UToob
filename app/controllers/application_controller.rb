class ApplicationController < ActionController::Base
  before_action :!authenicateuser
end
