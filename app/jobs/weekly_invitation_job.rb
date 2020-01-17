class WeeklyInvitationJob < ApplicationJob
  queue_as :default

  #should be configure to execute weekly once
  def perform_weekly
  	 group = Group.create(name: Date.today)
  	 group.save
     users = User.get_all_users_email
  	 users.each do |user|
  	 	WeeklyMeetingsMailer.with(user: user).send_invitation.deliver_now
  	 end
  end
end
