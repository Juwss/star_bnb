class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations
end
