class Language < ApplicationRecord
  has_many :lessons
  validates_uniqueness_of :name, on: :create, message: "must be unique"
end
