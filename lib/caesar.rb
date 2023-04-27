# frozen_string_literal: true

def shift_letter(letter, shift)
  return letter unless letter.ord.between?(65, 90) || letter.ord.between?(97, 122)

  if letter == letter.upcase
    shift_uppercase(letter, shift)
  else
    shift_lowercase(letter, shift)
  end
end

def shift_lowercase(letter, shift)
  return letter unless letter.ord.between?(65, 90) || letter.ord.between?(97, 122)

  (letter.ord + shift % 26) > 122 ? (letter.ord + shift % 26 - 26).chr : (letter.ord + shift % 26).chr
end

def shift_uppercase(letter, shift)
  return letter unless letter.ord.between?(65, 90) || letter.ord.between?(97, 122)

  (letter.ord + shift % 26) > 90 ? (letter.ord + shift % 26 - 26).chr : (letter.ord + shift % 26).chr
end

def caesar(word, shift)
  array = word.split('')
  result = array.map { |letter| shift_letter(letter, shift) }
  result.join('')
end

puts caesar('What a string!', 5) # => "Bmfy f xywnsl!"
