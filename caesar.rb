def shift_letter(letter, shift)
  unless letter.ord.between?(65, 90) or letter.ord.between?(97, 122)
    return letter
  end
  
  if letter == letter.upcase
    (letter.ord + shift % 26) > 90 ? (letter.ord + shift % 26 - 26).chr : (letter.ord + shift % 26).chr
  else
    (letter.ord + shift % 26) > 122 ? (letter.ord + shift % 26 - 26).chr : (letter.ord + shift % 26).chr
  end
end

def caesar(word, shift)
  array = word.split('')
  result = array.map {|letter| shift_letter(letter, shift)}
  result.join('')
end