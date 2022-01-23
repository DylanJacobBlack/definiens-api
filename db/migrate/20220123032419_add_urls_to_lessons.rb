class AddUrlsToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :url, :string
  end
end
