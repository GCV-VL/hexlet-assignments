# frozen_string_literal: true

# BEGIN
def reverse(string)
    reverse_string = ''
    1.upto(string.length) do |i|
      reverse_string += string[-i]
    end
    reverse_string
  end
# END
