class Movement < ApplicationRecord

  validates :amount, presence: true
  validates :concept, presence: true
  validates :day, presence: true
  # validates :description, presence :true
  # validates :payment, presence :true
  
end
