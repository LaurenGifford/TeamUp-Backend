class TeamSerializer < ActiveModel::Serializer
  attributes :id, :department, :leader, :teammates
end
