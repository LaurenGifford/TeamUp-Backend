class Project < ApplicationRecord
  belongs_to :team
  has_many :tasks

  # validates :priority, inclusion: {in: %w(1..10)}
end
