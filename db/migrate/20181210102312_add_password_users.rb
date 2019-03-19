class AddPasswordUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,  :password, :string
    add_column :users, :created_at, :datetime
    add_column :users, :updtaed_at, :datetime
  end
end
