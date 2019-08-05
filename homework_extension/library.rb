class Library

  def initialize(input_title, input_student_name, input_date)
    @title = input_title
    # @rental_details = @rental_details
    @student_name = input_student_name
    @date = input_date
  end

  # def get_book
  #   return title = @title
  # end

  def get_book
    return input_title = @title
  end

  def get_info_by_book_title(book_title)
    if book_title == @title
      return @title @student_name @input_date
    else
      return nil
    end
  end

end

# def set_cohort(new_cohort)
#   @cohort = new_cohort
# end
