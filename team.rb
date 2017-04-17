class Team
  #points = 0
  attr_accessor :team_name, :players, :coach, :points
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(player)
    return @players.push(player)
  end

  def is_a_player(player)
    return @players.include?(player)
  end

  def update_points_based_on_win_or_lose(result)
    if result == "win"
      @points += 3
      return @points
    end
  end
  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_team_name(team_name)
  #   return @team_name = team_name
  # end
  # def set_coach_name(coach)
  #   return @coach = coach
  # end
end
