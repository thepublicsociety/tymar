class Coverage < ActiveRecord::Base
  attr_accessible :content, :publish_date, :source, :title, :url
  after_save :add_date
  
  def add_date
    if self.publish_date.blank?
      self.update_attribute("publish_date", Time.now)
    end
  end
end
