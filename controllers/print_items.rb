# frozen_string_literal: true

def print_items
  if ENV['PROJECT_ID'].empty?
    p 'All tasks completed today:'
  else
    p "Tasks completed today in #{@project_name}:"
  end

  @items.each do |item|
    p item['content']
  end
end
