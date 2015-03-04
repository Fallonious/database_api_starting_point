class AddRepoTable < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.column :name, :string
      t.column :url, :string
      t.column :number_of_forks, :integer
      t.column :number_of_stars, :integer
      t.column :changed_at, :datetime
      t.column :language, :string
      t.column :body, :text
    end
  end
end
