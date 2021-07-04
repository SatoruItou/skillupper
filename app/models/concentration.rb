class Concentration < ActiveHash::Base
  selfe.data = [
    { id: 1, name:'----'}, { id: 2, name:'散漫気味', ,multiple:1 }, { id: 3, name:'断続的な集中', multiple: 1.2 }, {id: 4, name:'集中した', multiple:1.5 }, {id: 5, name:'マインドフル状態', multiple:1.8 }
  ]
  include ActiveHash::Associations
  has_many :skills
end
