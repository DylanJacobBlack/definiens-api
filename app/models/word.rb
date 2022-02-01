class Word < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  belongs_to :language
end
