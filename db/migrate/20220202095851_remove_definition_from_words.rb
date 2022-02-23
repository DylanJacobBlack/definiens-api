class RemoveDefinitionFromWords < ActiveRecord::Migration[6.1]
  def change
    remove_column :words, :definition, :text
    remove_column :words, :known, :string
    add_column :words, :translation, :text
    add_column :words, :known, :integer
    add_column :words, :home_language, :string
  end
end
