class SurveyQuestion < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to  :survey_id
  has_many    :survey_question_option
end
