require '../app_helper'
class CreateAuthor < Author

    def initialize (first_name, last_name, id = Random.rand(1..5_000_000))
        super(first_name, last_name)
    end

end