class ApplicationController < ActionController::Base
  protect_from_forgery
  has_mobile_fu
  p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
  p before_filter :force_mobile_format
  
  
  
  p "@@@@@@@@@@@@@@@@@@@@@@@@#{req.format}"
end
