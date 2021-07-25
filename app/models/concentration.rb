class Concentration < ActiveHash::Base
  self.data = [
    { id: 1, name:'----'}, { id: 2, name:'散漫気味', multiple:1 }, { id: 3, name:'断続的な集中', multiple: 1 }, {id: 4, name:'集中した', multiple:1 }, {id: 5, name:'マインドフル状態', multiple:2 }
  ]
  include ActiveHash::Associations
  has_many :sum_exps
end