# frozen_string_literal: true
require 'date'
# BEGIN
def count_by_years(users)
    men = []
    key = ''
    a = ''
    result = {}
    men = users.filter { |u| u[:gender] == 'male' }
    men.map do |u| key += Date.parse(u[:birthday]).year.to_s + " "
    end
    years = key.split
    years.each {|a|     result[a] = years.count(a) => a }

    result
  end