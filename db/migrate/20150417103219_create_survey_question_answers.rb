class CreateSurveyQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :survey_question_answers do |t|
       t.integer :survey_question_id
       t.integer :survey_question_option_id
       t.integer :user_id
       t.integer :created_at
      t.timestamps
    end
  end
end
