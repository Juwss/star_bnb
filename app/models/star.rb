class Star < ApplicationRecord
  belongs_to :user
  CATEGORY = ["Humourist", "Music artist", "Stylist", "Actor/actress", "Professional athlete", "Reality TV star", "Political figure"]
  validates :category, inclusion: { in: CATEGORY }
end
