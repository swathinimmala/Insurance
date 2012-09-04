class User < ActiveRecord::Base
  attr_accessible :age, :name

  has_many :policy_holders
  has_many :policies, :through => :policy_holders
  
  validates :name, :presence => true
  validates :age, :presence => true
  
  accepts_nested_attributes_for :policy_holders
  attr_accessible :policy_holders_attributes
end