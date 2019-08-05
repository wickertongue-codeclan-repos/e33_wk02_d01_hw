require('minitest/rg')
require('minitest/autorun')
require_relative('../part_a')

class TestStudent < MiniTest::Test

def test_get_name
  student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
  assert_equal('Hayden', student.get_name())
end

def test_get_cohort
  student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
  assert_equal('E33', student.get_cohort)
end

def test_set_name
  student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
  student.set_name('Alex')
  assert_equal('Alex', student.get_name())
end

def test_set_cohort
    student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
    student.set_cohort('E34')
    assert_equal('E34', student.get_cohort)
end

def test_get_skill
  student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
  assert_equal('I can talk', student.get_skill())
end

def test_get_favourite_language
    student = Student.new('Hayden', 'E33', 'I can talk', 'Ruby')
    assert_equal('I love Ruby', student.get_favourite_language)
end
end
