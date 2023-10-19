#require 'pry-byebug'

def caesar_cipher(string, shift)
  
  result = ''
  big_ord = (65..90)
  small_ord = (97..122)

  string.each_char do |char|
    
    
    char_ord = char.ord
  
    if big_ord.include?(char_ord)
      char_ord += shift
      if char_ord > big_ord.last
        char_ord = big_ord.first + (shift - (big_ord.last - char.ord + 1))
      end
    
    elsif small_ord.include?(char_ord)
      char_ord += shift 
      if char_ord > small_ord.last
        char_ord = small_ord.first + (shift - (small_ord.last - char.ord + 1))
      end
    end
    char = char_ord.chr
    result += char
    #binding.pry
  end
  puts result
end



caesar_cipher("What a string!", 5)