class SurveyQuestionAnswer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to  :survey_question_option
  belongs_to  :user_id
  belongs_to  :survey

end
