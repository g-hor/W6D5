class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, presence: true
  
  CAT_COLORS = ["red", "orange", "blue", "black", "white"]

  # before cat is saved to DB, CAT_COLORS.include?(:color)
end
