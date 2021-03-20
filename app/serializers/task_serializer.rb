class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_date, :completed, :project, :priority, :teammates, :ur_tasks

  def priority
    self.object.project.priority
  end

  def due_date 
    self.object.due_date.strftime("%m, %d, %Y")
  end
end
