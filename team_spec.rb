require('minitest/autorun')
require_relative('team')


class TestTeam < MiniTest::Test
  def setup
    @example_team = Team.new("Chealsea", ["John", "Gary", "Tim"], "Pavel Kovar")
  end

  def test_get_team_name
    assert_equal("Chealsea", @example_team.team_name)
  end

  def test_get_players
    assert_equal(["John", "Gary", "Tim"], @example_team.players)
  end

  def test_get_coach
    assert_equal("Pavel Kovar", @example_team.coach)
  end
 # always include test
  def test_set_team_name
    assert_equal("Arsenal", @example_team.team_name = "Arsenal")
  end

  def test_set_coach_name
    assert_equal("James Smith", @example_team.coach = "James Smith")
  end

  def test_add_new_player
    assert_equal(["John", "Gary", "Tim", "Chad"], @example_team.add_new_player("Chad"))
  end

  def test_is_a_player
    assert_equal(true, @example_team.is_a_player("John"))
  end

  def test_if_win_give_three_points
    assert_equal(3, @example_team.update_points_based_on_win_or_lose("win"))
  end
end
# Part B

# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (Array of strings) and a Coach (String).
# For each property in the class make a Getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the player's array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
