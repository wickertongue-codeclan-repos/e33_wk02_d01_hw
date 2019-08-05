class Team

attr_accessor :team_name, :players, :coach, :points

def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

def add_player(new_player)
  @players.push(new_player)
end

def player_checker(player_name)
  players.include? player_name
end

def add_points(result)
  @points += 1 if result == "win"
  @points -= 1 if result == "lose"
end

end
