class AddIndexOnPhoto < ActiveRecord::Migration[5.0]
  def change
    add_index :photos, :place_id
  end
end
