class UrTaskSerializer < ActiveModel::Serializer
  attributes :id
  has_one :teammate
  has_one :task
end
