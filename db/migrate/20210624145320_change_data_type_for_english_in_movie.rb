class ChangeDataTypeForEnglishInMovie < ActiveRecord::Migration[6.1]
  def change
    change_column_default :movies, :english, :boolean, using: "english::boolean", from: null, to: true
  end
end
