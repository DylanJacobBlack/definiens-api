class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.text :definition
      t.string :known
      t.references :lesson, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
