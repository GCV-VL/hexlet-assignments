# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  new_text = ''
  words = text.split
  words.map! {|word| word == stop_words[0]? word = '$#%!' : word = word}
  words.map! {|word| word == stop_words[1]? word = '$#%!' : word = word}
  new_text = words.join(' ')

    new_text
end

#
#words.each do |word|
#  word == stop_words[0]? word = '$#%!' : word = word
#  puts word
#
# rubocop:enable Style/For
 # BEGIN
 #word = stop_words[0]
 #result = text.gsub(/\b#{word}\b/, ' $#%!')
 #puts (result+ '_'+ word+'_')
 #result
 # END