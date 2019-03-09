class Group < ApplicationRecord
  belongs_to :user
  has_many :task_group_memberships
end
