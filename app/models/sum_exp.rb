class SumExp < ApplicationRecord
  with_options presence: true do
    validates :minute 
  end
  has_many :skills
  belongs_to :user

end
