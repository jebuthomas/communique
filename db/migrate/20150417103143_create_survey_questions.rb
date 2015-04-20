class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_question do |t|
    	t.integer :survey_id
    	t.string  :name
        t.timestamps
    end
  end
end
