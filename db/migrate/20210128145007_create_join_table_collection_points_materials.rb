class CreateJoinTableCollectionPointsMaterials < ActiveRecord::Migration[6.0]
  def change
    create_join_table :collection_points, :materials do |t|
      # t.index [:collection_point_id, :material_id]
      # t.index [:material_id, :collection_point_id]
    end
  end
end
