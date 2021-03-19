class Teammate < ApplicationRecord
  has_secure_password
  belongs_to :team
  has_many :ur_tasks
  has_many :tasks, through: :ur_tasks

  validates :name, uniqueness: { case_sensitive: false }

  def self.from_google_signin(payload)
    # find or create a user based on the email address from the Google payload
    Teammate.where(name: payload["email"]).first_or_create do |new_user|
      new_user.name = payload["email"]
      new_user.password = SecureRandom.base64(15)
    end
  end


end
