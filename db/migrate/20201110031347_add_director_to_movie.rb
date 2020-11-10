class AddDirectorToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :director, :string
  end
end
