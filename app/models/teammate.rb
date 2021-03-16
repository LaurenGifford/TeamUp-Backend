class Teammate < ApplicationRecord
  has_secure_password
  belongs_to :team
  has_many :ur_tasks
  has_many :tasks, through: :ur_tasks

  validates :name, uniqueness: { case_sensitive: false }
end
