class GroupLeader < ApplicationRecord

	belongs_to :group
	belongs_to :group_member
	has_many  :meeting_points
	validates :user_id, presence: true, uniqueness: { scope: :group_id }

end