class Poet < ApplicationRecord
  has_many :poems

  validates :name, presence: true, length: { minimum: 3 }
  validates :dates, presence: true
  validates :description, presence: true  

end
