class Technique < ActiveHash::Base
  self.data = [
    { id: 1, name:'----' }, { id: 2, name:'していない', multiple:1 }, { id: 3, name:'した', multiple:1.5 }
  ]
  include ActiveHash::Associations
  has_many :skills
end
