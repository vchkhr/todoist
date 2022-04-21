# frozen_string_literal: true

def check_env_required
  %w[API_TOKEN].each do |project_id|
    next unless ENV[project_id].nil? || ENV[project_id].empty?

    p "Please provide #{project_id} in the .env file. You can create it using the .env-example file."

    return false
  end

  true
end
