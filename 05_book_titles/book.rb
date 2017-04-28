class Book
# write your code here
    attr_accessor :title
    @subject

    def title=(value)
        title_split = value.split

        title_split.each_with_index do |word, index|
            next if ["the", "a", "an", "and", "in", "the", "of"].include?(word)

            title_split[index] = word.capitalize
        end
        title_split[0].capitalize!

        @title = title_split.join(" ")
    end

end
