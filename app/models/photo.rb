class Photo < ActiveRecord::Base
  has_attached_file :image
  
  scope :next , lambda {|current| after(current).limit(1) }
  scope :after, lambda {|current| where("id < ?", current).order("created_at DESC")}
  scope :previous, lambda {|current| before(current).limit(1) }
  scope :before , lambda {|current|  where("id > ?", current).order("created_at ASC") } # logic is inverted, most recent picture should show up as first
  
end
