FactoryGirl.define do 	
	factory :policy_holder do |ph|
		ph.association :policy
		ph.association :user
	end
end