def decode_char(decoded_char)
  character_translator = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  character_translator[decoded_char]
end

def decode_word(decoded_word)
  decoded_word.split.map { |char| decode_char(char) }.join
end

def decode(decode_sentence)
  decode_sentence.split('   ').map { |word| decode_word(word) }.join(' ')
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# Prints: "A BOX FULL OF RUBIES"
