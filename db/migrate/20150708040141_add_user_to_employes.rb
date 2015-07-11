class AddUserToEmployes < ActiveRecord::Migration
  def change
    add_reference :employes, :user, index: true
  end
end
