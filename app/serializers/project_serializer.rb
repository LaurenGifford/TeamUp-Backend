class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes, :priority
  has_one :team
  has_many :tasks
end
