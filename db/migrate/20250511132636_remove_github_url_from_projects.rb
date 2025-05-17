class RemoveGithubUrlFromProjects < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :github_url, :string
  end
end
