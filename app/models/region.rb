class Region < ApplicationRecord
has_many :days
belongs_to :country
end
