class SumExp < ApplicationRecord
  with_options presence: true do
    validates :minute 
  end
  belongs_to :skill
  belongs_to :user

end
