class Policy < ActiveRecord::Base
  attr_accessible :name, :premium
  has_many :policy_holders 
  has_many :users, :through => :policy_holders
  validates :name, :presence => true
  validates :premium, :presence => true
end
