class TeammateSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :points, :tasks
  has_one :team
end
