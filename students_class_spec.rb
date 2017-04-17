require('minitest/autorun')
require_relative('students_class')

# Part A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a Class called Student that takes in a name (String) and a cohort (integer) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

class TestStudentCodeClan < MiniTest::Test
  def setup
   @student_example = Student.new("Charlie", 12)
  end

  def test_get_name
   assert_equal("Charlie", @student_example.get_name)
  end

  def test_get_cohort
   assert_equal(12, @student_example.get_cohort)
  end

  def test_set_name
    assert_equal("Garry", @student_example.set_name("Garry"))
  end

  def test_set_cohort
    assert_equal(10, @student_example.set_cohort(10))
  end

  def test_talk
    assert_equal("I can talk.", @student_example.talk())
  end

  def test_favorite_programming_language
    assert_equal("I love Ruby.", @student_example.favorite_language("Ruby"))
  end
end
