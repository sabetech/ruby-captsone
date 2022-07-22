require '../modules/data_persistence'

class ListBooks
    attr_reader :books
    def initialize(books)
        @books = books
    end

    def display_book_list 
    end
end