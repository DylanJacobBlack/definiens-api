class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :title, presence: true
  validates :diff_lev, numericality: { only_integer: true }
end
