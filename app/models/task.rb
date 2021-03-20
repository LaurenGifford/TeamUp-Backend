class Task < ApplicationRecord
  belongs_to :project
  has_many :ur_tasks
  has_many :teammates, through: :ur_tasks

end
