require './classes/book'
class CreateBook < Book
    def initialize
        publisher = get_publisher
        cover_state = get_cover_state
        publish_date = get_publish_date
        super(publisher, cover_state, publish_date)
    end

    def return_book
        genre = get_genre
        label = get_label
        author = get_author
       
        self.add_genre(genre)
        self.label=label
        self.add_author(author)
    end

    def get_publisher
        puts 'who is the publisher of the book?\n'
        return gets.chomp
    end

    def get_cover_state
        loop do
            puts 'What is the cover state of the book?[good / bad]\n'
            answer = gets.chomp
            case answer
            when 'good'
                return answer
            when 'bad'
                return bad
            else
                puts 'Invalid input: Enter [good / bad]'
            end
        end
    end

    def get_publish_date
        puts 'What is the publish date of this book [yyyy-mm-dd]'
        date = gets.chomp
        return date
    end

end