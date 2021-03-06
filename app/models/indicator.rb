class Indicator < ActiveRecord::Base

 #  has_many :widgets
 #  has_many :parameters, :through => :query   
 #  belongs_to :query
 #  accepts_nested_attributes_for :query

  has_many :parameters, through: :source
  has_many :widgets
  belongs_to :unity
  belongs_to :source

  accepts_nested_attributes_for :source, allow_destroy: true
  accepts_nested_attributes_for :unity
  
end
