class TeammateSerializer < ActiveModel::Serializer
  attributes :id, :name, :points, :projects
  has_one :team
  has_many :tasks

  def projects
    projects = self.object.tasks.map do |task|
      task.project
    end
    projects.uniq
  end

  # def tasks
  #   self.object.tasks.each do |task| 
  #     task["priority"] = task.project.priority
  #   end
  #   byebug
  # end

end
