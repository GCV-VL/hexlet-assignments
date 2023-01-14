# frozen_string_literal: true
require 'date'
# BEGIN
def count_by_years(users)
    final_list = {}
    year = ''
    year_list = users.map {|user| user[:birthday][ 0, 4 ] }
    year_list.each do |year|
        final_list[year] = year_list.count(year) => year
        puts year
    end
    final_list
end
# END