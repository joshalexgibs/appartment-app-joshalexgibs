class CreateAddUserNameToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_user_name_to_users do |t|
      t.text :username

      t.timestamps
    end
  end
end
