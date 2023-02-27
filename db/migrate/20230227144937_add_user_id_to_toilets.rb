class AddUserIdToToilets < ActiveRecord::Migration[7.0]
  def change
    add_column :toilets, :user_id, :integer
  end
end
