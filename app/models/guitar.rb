class Guitar < ApplicationRecord
  scope :in_progress, lambda {where.not(:model => nil)}

  def days_in_progress
    "12"
  end

  def current_stage
    "finish"
  end
end
