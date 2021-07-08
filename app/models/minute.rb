class Minute < ActiveHash::Base
  self.data = [
    { id: 1, name:'----' }, { id: 2, name:'1' ,multiple: 1}
  ]
  include.ActiveHash::Associations
  has_many :sum_exps 
end
