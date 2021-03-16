class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_date, :status
  # has_one :project
end
