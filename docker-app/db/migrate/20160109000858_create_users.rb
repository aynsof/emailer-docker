class CreateUsers < ActiveRecord::Migration
  def up
    create_table :emails do |t|
      t.string :sender
      t.string :recipient
    end
  end

  def down
    drop_table :emails
  end
end
