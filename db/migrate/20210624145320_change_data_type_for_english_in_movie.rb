class ChangeDataTypeForEnglishInMovie < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, :boolean, using: "english::boolean", default: true
  end
end
