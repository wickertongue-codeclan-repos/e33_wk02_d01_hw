class Library

  def initialize(input_inventory, input_title, input_rental_details, input_student_name, input_date)
    @inventory = input_inventory
    @title = input_title
    @rental_details = input_rental_details
    @student_name = input_student_name
    @date = input_date
  end

# Create a getter for the books.

  def get_book
    return input_title = @inventory
  end

# Create a method that takes in a book title and returns all of the information about that book.

  def get_info_by_book_title(searched_title)
    if searched_title == @title
      return @inventory[0]
    else
      return nil
    end
  end

# Create a method that takes in a book title and returns only the rental details for that book.

def get_rental_info_by_book_title(searched_title)
  if searched_title == @title
    return @inventory[0][:rental_details]
  else
    return nil
  end
end

# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)

def add_book_to_inventory_by_book_title(new_book_title)
  new_book_array =
    {
      title: new_book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  new_book_title != @title
  @inventory.push(new_book_array)
end

# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

def change_rental_details(searched_title, searched_name, searched_date)
new_name =

  if searched_title == @title
    && searched_name == @student_name
    && searched_date == @date
  p "Please enter new rental details. Firstly, please enter the name of the student the book is now rented to: "
    new_name = gets.chomp!
  p "Please enter new rental details. Now enter the the date the book is due back: "
    new_date = gets.chomp!
    
    @student_name = new_name
    @new_date = new_name
  else
    nil
  end
end
end


__END__
