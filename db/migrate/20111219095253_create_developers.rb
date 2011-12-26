class CreateDevelopers < ActiveRecord::Migration
  def self.up
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :platform
      t.date :date_of_joining
      t.string :image_path

      t.timestamps
    end
  end

  def self.down
    drop_table :developers
  end
end
