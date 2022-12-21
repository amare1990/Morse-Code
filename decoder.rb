MORSE_CODE_DICT = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(cipher_char)
  letter = MORSE_CODE_DICT[cipher_char]
  return letter
end

def decode_word(cipher_word)
  cipher_array = cipher_word.split( )
  word = ''
  for x in cipher_array
    word += MORSE_CODE_DICT[x]
  end

  return word
end

def decode(cipher_text)
  cipher_word_array = cipher_text.split(   )
  text = ''

  for word in cipher_word_array
    text += decode_word(word)
    #text += ' '
  end

  return text
end



x = decode_char("-")
puts(x)

w = decode_word("-- -.--")
puts w

t = decode("-- -.--   -. .- -- .")

puts "decode text = #{t}"
