class WeeklyMeetingsMailer < ApplicationMailer
	def send_invitation(user)
		@user = user
    	@url  = "127.0.0.1:3000/group_member/invite/#{user.id}"
    	mail(to: @user.email, subject: 'Welcome to team outing')
  end
end
