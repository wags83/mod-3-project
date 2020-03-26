class User < ApplicationRecord
has_many :favorites
has_many :countries, through: :favorites

validates :username, uniqueness: true
end
