class Reservation < ApplicationRecord
  belongs_to :star
  belongs_to :user
end
