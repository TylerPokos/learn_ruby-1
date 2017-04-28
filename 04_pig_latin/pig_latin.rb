#write your code here
def translate (sent)
    sent_array = sent.split()
    alphabet = ('a'..'z').to_a
    vowels = %w{a e i o u}
    consonants = alphabet - vowels
    sent_array.each_with_index do |word, index|
        if vowels.include?(word[0])
            sent_array[index] = word + "ay"
            next
        end
        while consonants.include?(word[0]) || word[0] == "u" do
            word = word[1..-1] + word[0]
        end
        sent_array[index] = word + "ay"
    end
    return sent_array.join(" ")
end