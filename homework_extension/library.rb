class Library

  def initialize(input_inventory, input_title, input_rental_details, input_student_name, input_date)
    @inventory = input_inventory
    @title = input_title
    @rental_details = input_rental_details
    @student_name = input_student_name
    @date = input_date
  end

  def get_book
    return input_title = @inventory
  end

  def get_info_by_book_title(searched_title)
    if searched_title == @title
      @inventory[0]
    else
      return nil
    end
  end

def get_rental_info_by_book_title(searched_title)
  if searched_title == @title
    @inventory[0][:rental_details]
  else
    return nil
  end
end


end
