class Photograph < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :photo
  has_attached_file :photo, :styles => {:thumb => "184x132>"}
end
