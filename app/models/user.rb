class User < ApplicationRecord
has_many :favorites

validates :username, uniqueness: true
end
