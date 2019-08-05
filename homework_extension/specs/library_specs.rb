require("pry")
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
              student_name: "Melina",
              date: "02/05/16"
            }
          }
        ]
  end

  def test_get_book
    library = Library.new(@inventory, @inventory[0][:title], @inventory[0][:rental_details], @inventory[0][:student_name], @inventory[0][:date])

    expected = @inventory
    actual = library.get_book
    assert_equal(expected, actual)
  end

  def test_get_info_by_book_title
    library = Library.new(@inventory, @inventory[0][:title], @inventory[0][:rental_details], @inventory[0][:student_name], @inventory[0][:date])

    expected = @inventory[0]
    actual = library.get_info_by_book_title("Lord of the Rings")
    assert_equal(expected, actual)
  end

  def test_get_rental_info_by_book_title
    library = Library.new(@inventory, @inventory[0][:title], @inventory[0][:rental_details], @inventory[0][:student_name], @inventory[0][:date])

    expected = @inventory[0][:rental_details]
    actual = library.get_rental_info_by_book_title("Lord of the Rings")
    assert_equal(expected, actual)
  end
end
