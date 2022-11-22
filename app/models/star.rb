class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations

  CATEGORY = ["Humourist", "Music artist", "Stylist", "Actor/actress", "Professional athlete", "Reality TV star", "Political figure"]
  validates :category, inclusion: { in: CATEGORY }
end
