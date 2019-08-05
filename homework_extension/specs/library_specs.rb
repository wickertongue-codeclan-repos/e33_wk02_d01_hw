require('minitest/rg')
require('minitest/autorun')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def test_get_book
    library = Library.new("Lord of the Rings", "Jeff", "01/12/16")
    assert_equal("Lord of the Rings", library.get_book())
  end

  # def test_get_info_by_book_title
  #   library = Library.new("Lord of the Rings", "Jeff", "01/12/16")
  #   assert_equal(3, library.get_info_by_book_title("Lord of the Rings"))
  # end


end


# def test_set_cohort
#     student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
#     student.set_cohort('E34')
#     assert_equal('E34', student.get_cohort)
# end
