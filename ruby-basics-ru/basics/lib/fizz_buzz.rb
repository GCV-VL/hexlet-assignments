# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)

    if start > stop then print 'string is empty'
    else
        string  = ''
        for s in start..stop
            unless string.empty?
                string += ' '
            end
            if s % 3 == 0 then
                if s % 5 ==0 then char = 'FizzBuzz'
                else char = 'Fizz'
                end
            elsif s % 5 == 0 then char = 'Buzz'
            else char = s.to_s
            end
            string += char
        end
    end
    string
end
# END
