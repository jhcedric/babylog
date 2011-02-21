class CreateDiaperChanges < ActiveRecord::Migration
  def self.up
    create_table :diaper_changes do |t|
      t.string :email
      t.string :babyname
      t.datetime :starttime
      t.datetime :endtime
      t.string :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :diaper_changes
  end
end
