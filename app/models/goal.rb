class Goal < ActiveRecord::Base
  attr_accessible :due_date, :title
  validates :user_id, presence: true
end
