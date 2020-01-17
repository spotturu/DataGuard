class MeetingPoint < ApplicationRecord
	belongs_to :group_leaders
	validates :user_id, presence: true, uniqueness: { scope: :group_id }
end