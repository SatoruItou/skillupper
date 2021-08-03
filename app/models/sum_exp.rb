class SumExp < ApplicationRecord
  with_options presence: true do
    validates :minute 
  end
  belongs_to :skill , foreign_key: :skill_id, dependent: :destroy
 

end
