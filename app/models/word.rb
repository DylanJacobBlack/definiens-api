class Word < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :name, presence: true, uniqueness: true
  validates :definition, presence: true
  validates :known, numericality: { only_integer: true }
end
