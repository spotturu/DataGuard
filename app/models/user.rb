class User < ApplicationRecord
belongs_to :unit
validates :first_name, presence: true
validates :last_name, presence: true
validates :email, presence: true, uniqueness: {case_sensitive: false}, allow_blank: false
scope :get_all_users_email, -> do
	User.all.pluck(:email)
end

def name
	"#{first_name} #{last_name}"
end
end
