#require 'pry-byebug'

def caesar_cipher(string, shift)
  
  result = ''
  big_ord = (65..90)
  small_ord = (97..122)

  #iterate through each char in string
  string.each_char do |char|

    #assign ord value to char
    char = char.ord
    
    #check for upcase letters
    if big_ord.include?(char)

      #add shift value to char
      char += shift

      #reset char to (A) if it goes over (Z)
      char = (big_ord.first + (char - big_ord.last) - 1) until char < (big_ord.last + 1)

    #binding.pry

    #check for downcase letters
    elsif small_ord.include?(char)
      char += shift 
      char = (small_ord.first + (char - small_ord.last) - 1) until char < (small_ord.last + 1)
    end
    result += char.chr
  end
  puts result
end

caesar_cipher("What a string!", 31)