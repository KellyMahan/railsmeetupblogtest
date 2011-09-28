class User < ActiveRecord::Base
  has_many :posts
  
  accepts_nested_attributes_for :posts, :allow_destroy => true, :reject_if => proc{|attributes| attributes[:title].blank?}
end
