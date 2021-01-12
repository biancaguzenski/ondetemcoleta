class CreateCollectionPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :collection_points do |t|
      t.string :name
      t.string :state
      t.string :city
      t.string :address
      t.integer :phone
      t.string :obs

      t.timestamps
    end
  end
end
