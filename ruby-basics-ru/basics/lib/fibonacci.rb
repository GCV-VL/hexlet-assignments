# frozen_string_literal: true
# BEGIN
def fibonacci(num)
    result = 0
    result = 1 if num == 1
    result = 0 if num == 0
    result = nil if num < 0
    if num > 1 then
        result = 1
        a = 0
        counter = num -1
        counter.times do
            result += a
            a = result - a
        end
    end
    result
end