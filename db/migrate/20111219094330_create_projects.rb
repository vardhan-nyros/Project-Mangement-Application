class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :Title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :Client_name
      t.string :platform

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
