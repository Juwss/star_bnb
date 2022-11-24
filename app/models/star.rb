class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  CATEGORY = ["Humourist", "Music artist", "Stylist", "Actor/actress", "Professional athlete", "Reality TV star", "Political figure"]
  validates :category, inclusion: { in: CATEGORY }
end
