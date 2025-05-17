class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :github
      t.string :github_url
      t.string :live_url
      t.string :tech
      t.string :image

      t.timestamps
    end
  end
end
