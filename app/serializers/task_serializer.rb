class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_date, :status, :project, :priority, :teammates
  # has_one :project

  def priority
    self.object.project.priority
  end

  def due_date 
    self.object.due_date.strftime("%m, %d, %Y")
  end
end
