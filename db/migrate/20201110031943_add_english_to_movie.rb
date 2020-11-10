class AddEnglishToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :english, :string
  end
end
