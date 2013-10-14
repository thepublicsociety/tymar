class Secret < ActiveRecord::Base
  attr_accessible :blurb, :content, :pubish_date, :title, :image, :youtube,:publish_date
  has_attached_file :image, :styles => {:thumb => "184x132>", :display => "481x262>"}
  after_save :add_date
  
  def add_date
    if self.publish_date.blank?
      self.update_attribute("publish_date", Time.now)
    end
  end
end
