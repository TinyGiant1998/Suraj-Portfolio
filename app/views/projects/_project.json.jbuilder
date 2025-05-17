json.extract! project, :id, :title, :description, :github, :live_url, :tech, :image, :created_at, :updated_at
json.url project_url(project, format: :json)
