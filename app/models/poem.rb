class Poem < ApplicationRecord
  belongs_to :poet

  validates :title, presence: true, length: { minimum: 3 }
  validates :poemtext, presence: true  
end
