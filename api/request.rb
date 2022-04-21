# frozen_string_literal: true

def api_request
  res = perform_request

  @json = JSON.parse(res.body)

  if res.code != '200'
    p "Error #{res.code}: #{@json['error']}"

    return false
  end

  true
end

private

def perform_request
  uri = URI('https://api.todoist.com/sync/v8/completed/get_all')
  req = Net::HTTP::Get.new(uri)
  req['Authorization'] = "Bearer #{ENV['API_TOKEN']}"

  Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
    http.request(req)
  end
end
