class Event < ActiveRecord::Base
  attr_accessible :end, :info, :location, :start
end
