class AddAvatarColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    def up
       add_attachment :users, :avatar
    end

    def down
      remove_attachment :users, :avatar
    end
  end
end
