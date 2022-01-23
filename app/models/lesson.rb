class Lesson < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :picture
  belongs_to :user
  belongs_to :language
  
  def get_url
    url_for(self.picture)
  end
end
