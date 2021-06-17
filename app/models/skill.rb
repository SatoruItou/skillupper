class Skill < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :genre
    validates :level
  end
  
end
