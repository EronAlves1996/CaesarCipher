def caesar_cipher(string, shifting)
  string
    .bytes
    .map do |item|
    next item if item == 32
    next ((item - 65 + shifting) % 26) + 65 if item.between?(65, 90)
    next ((item - 97 + shifting) % 26) + 97 if item.between?(97, 122)
  end
    .collect { |char| char.chr }
    .join("")
end
