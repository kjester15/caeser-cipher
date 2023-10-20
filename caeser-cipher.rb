def caeser_cipher(text, num)
  cipher_text = ''
  text.each_char do |c|
    if /[A-Z]/.match?(c)
      new_ascii = c.ord + num
      if new_ascii > 90 then new_ascii -= 26 end
    elsif /[a-z]/.match?(c)
      new_ascii = c.ord + num
      if new_ascii > 122 then new_ascii -= 26 end
    else
      new_ascii = c.ord
    end
    cipher_text += new_ascii.chr
  end
  cipher_text
end

puts caeser_cipher('What a string!', 5)
