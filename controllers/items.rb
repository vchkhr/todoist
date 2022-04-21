# frozen_string_literal: true

def items
  @items = @json['items'].select do |item|
    if Date.parse(item['completed_date']) == Date.today
      if ENV['PROJECT_ID'].empty?
        true
      else
        item['project_id'].to_s == ENV['PROJECT_ID'].to_s
      end
    end
  end

  @items.reverse!
end
