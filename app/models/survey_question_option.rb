class SurveyQuestionOption < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :survey_question_id
  has_many   :survey_question_answer
  belongs_to :survey_question
end
