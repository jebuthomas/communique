class CreateSurveyQuestionOptions < ActiveRecord::Migration
  def change
    create_table :survey_question_options do |t|
      t.integer  :survey_question_id
      t.string   :name
      t.timestamps
    end
  end
end
