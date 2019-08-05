require('minitest/rg')
require('minitest/autorun')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @inventory = [
      {
        title: "Lord of the Rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "Pale Fire",
        rental_details: {
          student_name: "Jonathan",
          date: "23/04/16"
        }
      },
      {
        title: "The Left Hand of Darkness",
        rental_details: {
          student_name: "April",
          date: "15/01/16"
        }
      },
      {
        title: "One Dimensional Man",
        rental_details: {
          student_name: "Susan",
          date: "04/06/16"
        }
      }]
    end
  end

  def test_get_book
    assert_equal(@Library.count, @Library.get_all_books.count)
  end


    def test_get_cohort
  student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
  assert_equal('E33', student.get_cohort)
end
