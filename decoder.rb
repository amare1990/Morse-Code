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
  cipher_array = cipher_word.split(' ')
  word = ''
  cipher_array.each{|x| word += MORSE_CODE_DICT[x]}

  return "#{word} "
end

def decode(cipher_text)
  cipher_word_array = cipher_text.split('   ')
  puts("cipher_word_array ftom text= #{cipher_word_array}")
  text = ''

  cipher_word_array.each {|word| text += decode_word(word)}

  return text
end

x = decode_char("-")
puts("x first ===#{x}")

w = decode_word("-- -.--")
puts ("win the second ====#{w}")

t = decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

puts "decoded text = #{t}"
