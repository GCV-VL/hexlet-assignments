# frozen_string_literal: true
require 'date'
# BEGIN
def count_by_years(users)
<<<<<<< HEAD
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
=======
    men = users.select { |user| user[:gender] == 'male' }
    years = men.map { |man| man[:birthday][0..3] }

    years.each_with_object(Hash.new(0)) do |year, acc|
      acc[year] += 1
    end

    # Альтернативное решение
    # years.tally
  end
# END
>>>>>>> master
