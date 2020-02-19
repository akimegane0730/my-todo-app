class Clock < ActiveHash::Base
  self.data = [
      {id: 1, name: '10分'}, {id: 2, name: '30分'}, {id: 3, name: '1時間'},
      {id: 4, name: '3時間'}, {id: 5, name: '5時間'},
  ]
end