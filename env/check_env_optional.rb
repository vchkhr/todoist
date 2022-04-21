# frozen_string_literal: true

def check_env_optional
  %w[PROJECT_ID].each do |project_id|
    next unless ENV[project_id].nil?

    p "Please provide #{project_id} in the .env file. You can create it using the .env-example file."

    return false
  end

  true
end
