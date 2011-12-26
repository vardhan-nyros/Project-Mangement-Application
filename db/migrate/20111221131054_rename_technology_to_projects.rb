class RenameTechnologyToProjects < ActiveRecord::Migration
  def self.up
  rename_column :projects, 'technnology','technology'
  end

  def self.down
rename_column :projects, 'technology','technnology'
  end
end
