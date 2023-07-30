class AddAttributesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, unique: true, length: { minimum: 3, maximum: 64 }
    add_column :users, :email, :string, unique: true, presence: true, length: { minimum: 5, maximum: 500 }
    add_column :users, :password, :string, length: { minimum: 8, maximum: 64 }
  end
end
