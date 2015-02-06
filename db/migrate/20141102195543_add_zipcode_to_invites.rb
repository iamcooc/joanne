class AddZipcodeToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :zipcode, :string
  end
end
