class UrTaskSerializer < ActiveModel::Serializer
  attributes :id, :teammate_id, :task_id
  has_one :teammate
  has_one :task
end
