# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(hash)
    text = ''
    hash.sort.each do |key, val|
        unless text.empty?
            text += '&'
        end
        text += "#{key}=#{val}"
    end
    text
end

# END
# rubocop:enable Style/For
