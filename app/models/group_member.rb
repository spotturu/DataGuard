class GroupMember < ApplicationRecord
 has_many :group_leaders
 has_many :groups, through: :group_leaders
	
 validates :user_id, presence: true, uniqueness: { scope: :group_id }

 scope :get_eligible_group_leaders, -> do
    GroupMember.where('count(group_leader) group by group_leader_id ') # TODO
 end

 after_initialize do |new_record|
    if new_record.id.nil?
	    group = Group.get_recent_week_group
	    new_record.group_id = group.id if group.present?
    end
  end

  before_validation do |record|
    validate_current_week_group
  end

  def validate_current_week_group
  	group = Group.get_recent_week_group
  	errors.push("Group doesnot created for Current week") unless group.present?
  end
end
