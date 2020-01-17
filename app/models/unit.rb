class Unit < ApplicationRecord
has_many :users, dependent: :restrict_with_error
validates :name, presence: true, uniqueness: {case_sensitive: false}, allow_blank: false
end
