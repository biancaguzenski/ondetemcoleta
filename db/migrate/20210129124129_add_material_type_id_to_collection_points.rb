class AddMaterialTypeIdToCollectionPoints < ActiveRecord::Migration[6.0]
  def change
    add_column :collection_points, :material_type_id, :integer
  end
end
