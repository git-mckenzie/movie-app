class ChangeDataTypeForEnglishInMovie < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, :boolean, null: false, default: true
    # change_column :movies, :english, :boolean, using: "english::boolean", null: false, default: true
  end
end
