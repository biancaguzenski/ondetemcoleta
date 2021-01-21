class ChangeDataTypeForPhoneAgain < ActiveRecord::Migration[6.0]
  def change
    change_column(:collection_points, :phone, :string)
  end
end
