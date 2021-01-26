class AddTypeOfMaterialToCollecitionPoints < ActiveRecord::Migration[6.0]
  def change
    add_column :collection_points, :type_of_material, :string
  end
end
