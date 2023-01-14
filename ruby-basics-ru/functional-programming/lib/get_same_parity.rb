# frozen_string_literal: true

# BEGIN
def get_same_parity(array)

    if array.first.respond_to?('even?') then
        if array.first.even? then
            result = array.select {|el| el.even?}
        else
            result = array.reject {|el| el.even?}
        end
    else
        result = array
    end

    result

end

# END
