class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :candidate
      t.string :ip

      t.timestamps
    end
  end
end
