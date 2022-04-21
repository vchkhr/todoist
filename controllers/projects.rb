# frozen_string_literal: true

def projects
  projects = @json['projects']

  return '' if ENV['PROJECT_ID'].empty?

  unless projects.key?(ENV['PROJECT_ID'])
    projects = projects.map { |p| "#{p[1]['name']} = #{p[0]}" }.join('; ')

    print_info(projects)

    return false
  end

  @project_name = projects[ENV['PROJECT_ID']]['name']
end

private

def print_info(projects)
  p 'There is no project with provided id.' unless ENV['PROJECT_ID'] == '?'

  p "Available projects: #{projects}"
end
