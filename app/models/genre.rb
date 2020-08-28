class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: '本格'},
    { id: 3, name: '叙述'},
    { id: 4, name: '警察'},
    { id: 5, name: 'イヤミス'},
    { id: 6, name: '医療'},
    { id: 7, name: 'SF'},
    { id: 8, name: '日常'},
    { id: 9, name: '恋愛'},
    { id: 10, name: 'アクション'},
    { id: 11, name: '短編'},
  ]
end
