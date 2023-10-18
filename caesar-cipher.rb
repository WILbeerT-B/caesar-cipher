#require 'pry-byebug'

def caesar_cipher(string, shift)
  
  string.each_char do |char|
    
    if ((char.ord < 65 || char.ord > 90) && (char.ord < 97 || char.ord > 122))
      char = char
    
    else
      char_ord = char.ord + factor
      if (char_ord > 90 && char_ord < 97)
        char_ord = 65
        char_ord += 1
      
      elsif (char_ord > 122)
        char_ord = 97
        char_ord += 1
      end
      
      char = char_ord.chr
      #binding.pry
    end
    puts char
  end
end

caesar_cipher("Omae wa mou shindeiru. -NANI!?!!", 21)