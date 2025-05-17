module ApplicationHelper
  def admin_link_to(name, path, **options)
    if path.is_a?(String)
      uri = URI(path)
      query = Rack::Utils.parse_nested_query(uri.query).merge("key" => ENV["ADMIN_KEY"])
      uri.query = query.to_query
      full_path = uri.to_s
    elsif path.is_a?(Hash)
      full_path = url_for(path.merge(key: ENV["ADMIN_KEY"]))
    else
      raise ArgumentError, "Unsupported path type"
    end

    link_to name, full_path, **options
  end
end
