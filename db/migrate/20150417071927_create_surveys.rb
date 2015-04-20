class CreateSurveys < ActiveRecord::Migration
	def change
		create_table :surveys do |t|
			t.string :name
			t.string :survey_type, :limit => 30
			t.string :visible_to, :limit => 20
			t.date	 :expiry_date
			t.integer :user_id
			t.timestamps
		end
	end
end
