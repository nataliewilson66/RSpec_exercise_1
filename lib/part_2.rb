def hipsterfy(word)
  vowels = "aeiou"
  n = word.length - 1
  while n >= 0
    if vowels.include?(word[n])
        word[n] = ""
        return word
    end
    n -= 1
  end
  return word
end

def vowel_counts(str)
  str = str.downcase
  vowels = "aeiou"
  hash = Hash.new(0)
  str.each_char do |char|
    if vowels.include?(char)
        hash[char] += 1
    end
  end
  hash
end

def caesar_cipher(message, n)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  message.each_char.with_index do |char, idx|
    if alpha.include?(char) 
        message[idx] = alpha[(alpha.index(char) + n) % 26]
    end
  end
  return message
end