class Reservation < ApplicationRecord
  belongs_to :star, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
