class AddUsersIdAndDescription < ActiveRecord::Migration
	def change
		change_table :comics do |t|
			t.integer :user_id
			t.index :user_id
			t.string :synopsis
		end
	end
end
