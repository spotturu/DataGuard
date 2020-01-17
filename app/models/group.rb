class Group < ApplicationRecord

	has_many :group_leaders, dependent: :restrict_with_error
	has_many :group_members, through: :group_leaders
	validates :name, presence: true, uniqueness: {case_sensitive: false}, allow_blank: false
	
	scope :get_recent_week_group, -> do
		Group.where("name between ? and ? ", Date.today-6.days, Date.today)
	end

end
