class MakeRepoTable < ActiveRecord::Migration
  def change
    remove_column :profiles, :repository_list
  end
end
