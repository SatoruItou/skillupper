class OutPut < ActiveHash::Base
  self.data = [
    { id: 1, name:'----' },  { id: 2, name:'なし', multiple:1 }, {id: 3, name:'あり', multiple:1.5 }
  ]
  include ActiveHash::Associations
  has_many :sum_exps
end
