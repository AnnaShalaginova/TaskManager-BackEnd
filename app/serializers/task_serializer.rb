class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :due_date, :notes
  belongs_to :user
end
