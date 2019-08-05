require('minitest/autorun')
require('minitest/rg')
require_relative('../homework_part_b')

class TestTeam < MiniTest::Test

def test_get_team_name
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  assert_equal("Red Team", team.team_name())
end

def test_get_players_name
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  assert_equal(["Alex", "Hayden"], team.players())
end

def test_get_coaches_name
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  assert_equal("Red Coach", team.coach())
end

def test_set_coaches_name
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  team.coach = "Blue Coach"
  assert_equal("Blue Coach", team.coach())
end

def test_add_new_player
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  team.add_player("John")
  assert_equal(["Alex", "Hayden", "John"], team.players)
end

def test_player_checker
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  team.player_checker("Alex")
  assert_equal(["Alex", "Hayden"], team.players)
end

def test_add_points
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  team.add_points("win")
  assert_equal(1, team.points)
end


def test_remove_points
  team = Team.new("Red Team", ["Alex", "Hayden"], "Red Coach", 0)
  team.add_points("lose")
  assert_equal(-1, team.points)
end

end
