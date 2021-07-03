class Skill < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :genre
    validates :level
    validates :exp
    validates :image
  end

  belongs_to :user
  has_one_attached :image
end
