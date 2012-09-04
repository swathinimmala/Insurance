class PolicyHolder < ActiveRecord::Base
	attr_accessible :user_id, :policy_id
	belongs_to :user
	belongs_to :policy
	validates :user, :presence => true
	validates :policy, :presence => true
end
