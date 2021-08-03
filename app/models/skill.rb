class Skill < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :genre
    validates :image
    
  end

  belongs_to :user
  has_one_attached :image
  has_many :sum_exps, optional: true
end
