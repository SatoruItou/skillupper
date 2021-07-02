class Skill < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :genre
    validates :level, default:1
    validates :experience_point, default:0
    validates :image
  end

  belongs_to :user
  has_one_attached :image
end
