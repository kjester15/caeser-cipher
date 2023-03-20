def ceaser_cipher(text,num)
    cipher_text = ''
    text.each_char do |c|
        if /[A-Z]/.match?(c)
            new_ascii = c.ord + num
            if new_ascii > 90
                new_ascii = new_ascii - 26
            end
            cipher_text += new_ascii.chr
        elsif /[a-z]/.match?(c) 
            new_ascii = c.ord + num
            if new_ascii > 122
                new_ascii = new_ascii - 26
            end
            cipher_text += new_ascii.chr
        else
            new_ascii = c.ord
            cipher_text += new_ascii.chr
        end 
    end
    return cipher_text
end

puts ceaser_cipher("What a string!",5)