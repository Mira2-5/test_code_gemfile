def caesar_cipher(message, key)
  key = key % 26
  result = ""

  message.each_char do |char|
    if char.match(/[A-Z]/)
      result += ((char.ord - 65 + key) % 26 + 65).chr
    elsif char.match(/[a-z]/)
      result += ((char.ord - 97 + key) % 26 + 97).chr
    else
      result += char
    end
  end

  return result
end
