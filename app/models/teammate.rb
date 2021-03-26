class Teammate < ApplicationRecord
  has_secure_password
  belongs_to :team
  has_many :ur_tasks
  has_many :tasks, through: :ur_tasks

  validates :name, uniqueness: { case_sensitive: false }

  def self.from_google_signin(payload, params)
    Teammate.where(name: payload["name"]).first_or_create do |new_user|
      new_user.name = payload["name"]
      new_user.password = SecureRandom.base64(15)
      new_user.team_id = params[:team_id]
      new_user.points = params[:points]
    end
  end


end
