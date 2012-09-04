class CreatePolicyHolders < ActiveRecord::Migration
  def change
    create_table :policy_holders do |t|
      t.integer :user_id
      t.integer :policy_id

      t.timestamps
    end
  end
end
