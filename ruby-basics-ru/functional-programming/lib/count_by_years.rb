# frozen_string_literal: true
require 'date'
# BEGIN
def count_by_years(users)
    men = users.select { |user| user[:gender] == 'male' }
    years = men.map { |man| man[:birthday][0..3] }

    years.each_with_object(Hash.new(0)) do |year, acc|
      acc[year] += 1
    end

    # Альтернативное решение
    # years.tally
  end
# END
