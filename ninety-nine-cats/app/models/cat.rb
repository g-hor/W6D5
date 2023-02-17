require 'action_view'
require 'action_view/helpers'

class Cat < ApplicationRecord
include ActionView::Helpers::DateHelper

  validates :birth_date, :color, :name, :sex, presence: true
  validates :color, inclusion: { in: CAT_COLORS }
  validates :sex, inclusion: { in: ["M", "F"] }

  CAT_COLORS = ["red", "orange", "blue", "black", "white"]

  def birth_date_cannot_be_future
    if birth_date.present? && birth_date > Date.today
      errors.add(:birth_date, "can't be the future")
    end
  end

  def age

  end

end
