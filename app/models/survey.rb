class Survey < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_many   :survey_options
end
