class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  # CATEGORY = ["Humourist", "Music artist", "Stylist", "Actor/actress", "Professional athlete", "Reality TV star", "Political figure"]
  # validates :category, inclusion: { in: CATEGORY }

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :first_name, :last_name, :description ],
    using: {
      tsearch: { prefix: true }
  }
end
