class AddCategoryToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :category, :integer
  end
end
