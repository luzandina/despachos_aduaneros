# encoding: utf-8
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :set_page

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  layout lambda{ |controller| controller.request.xhr? ? false : "application" }

protected
  def verificar_usuario
    redirect_to('/') if session[:usuario_id].nil?
  end

  def set_page
    @page = params[:page] || 1
  end
end
