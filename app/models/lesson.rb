class Lesson < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  belongs_to :language
end
