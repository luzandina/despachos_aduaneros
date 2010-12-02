# encoding: utf-8
# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  # Para poder localizar la fecha
  def lo(data, options = {})
    if[Date, Time, DateTime, ActiveSupport::TimeWithZone].include? data.class
      l data, options
    end
  end
end
