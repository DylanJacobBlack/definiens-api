class RemoveLessonIdsFromWords < ActiveRecord::Migration[6.1]
  def change
    remove_column :words, :lesson_id, :bigint
  end
end
