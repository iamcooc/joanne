class ChangeMessageFormatInComments < ActiveRecord::Migration
  def change
  	 change_column :comments, :message, :string
  end
end
