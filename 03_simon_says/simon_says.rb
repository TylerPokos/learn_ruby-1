#write your code here

def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, times = 2)
    repeat_array = []
    times.times do
        repeat_array.push(word)
    end
    repeat_array.join(" ")
end

def start_of_word(word, substring_cap)
    word[0, substring_cap]
end

def first_word(in_string)
    in_string.split(" ").first
end

def titleize(in_string)
    title = in_string.split(" ")

    title.each_with_index do |word, index|
        next if ["and", "over", "the"].include?(word)
        title[index] = word.capitalize
    end

    title[0].capitalize!
    return title.join(" ")
end