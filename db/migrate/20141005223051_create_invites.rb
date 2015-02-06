class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :company, default: 0
      t.string :location
      t.boolean :isVeg, default: :false

      t.timestamps
    end
  end
end
