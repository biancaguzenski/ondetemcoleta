class ChangeIntegerLimitCollectionPoints < ActiveRecord::Migration[6.0]
  def change
    change_column :collection_points, :phone, :integer, limit: 8
  end
end
