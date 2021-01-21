class ChangeIntegerLimitCollectionPoints < ActiveRecord::Migration[6.0]
  def change
<<<<<<< HEAD
    change_column :collection_points, :phone, :string
=======
    change_column :collection_points, :phone, :integer, limit: 8
>>>>>>> 00b6856776c431f66c7126021cd6a752a30e9e8b
  end
end
