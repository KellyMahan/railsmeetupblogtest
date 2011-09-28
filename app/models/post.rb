class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :tags, :dependent => :destroy
  accepts_nested_attributes_for :tags, :allow_destroy => true, :reject_if => proc{|attributes| attributes[:name].blank?}
end
