class AddIpToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :ip, :string
  end
end
