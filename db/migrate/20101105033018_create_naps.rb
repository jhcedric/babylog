class CreateNaps < ActiveRecord::Migration
  def self.up
    create_table :naps do |t|
      t.string :email
      t.string :babyname
      t.datetime :starttime
      t.datetime :endtime
      t.string :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :naps
  end
end
