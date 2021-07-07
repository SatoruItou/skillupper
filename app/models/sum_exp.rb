class SumExp < ApplicationRecord
  with_options presence: true do
    validates :time
    validates :exp_point
  end
  has_many :skills
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :technique
  belongs_to :concentration
  belongs_to :out_put

  with_options numericality: { other_than: 1 } do
    validates :conventration_id
    validates :technique_id
    validates :out_put_id
  end

end
