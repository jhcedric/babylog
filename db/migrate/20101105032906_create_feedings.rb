class CreateFeedings < ActiveRecord::Migration
  def self.up
    create_table :feedings do |t|
      t.string :email
      t.string :babyname
      t.datetime :starttime
      t.datetime :endtime
      t.string :breast

      t.timestamps
    end
  end

  def self.down
    drop_table :feedings
  end
end
