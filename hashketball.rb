# Write your code here!


def game_hash
  hash = {}
  hash[:home] = {}
  hash[:away] = {}
  hash.each do |k, v|
    hash[k][:team_name] = ""
    hash[k][:colors] = []
    hash[k][:players] = {}
  end
  hash[:home] = {team_name: "Brooklyn Nets", colors: ['Black', 'White'], players: {
    "Alan Anderson" => {number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
    "Reggie Evans" => {number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
    "Brook Lopez" => {number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
    "Mason Plumlee" => {number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
    "Jason Terry" => {number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
    }
  }
  
  hash[:away] = {team_name: "Charlotte Hornets", colors: ['Turquoise', 'Purple'], players: {
    "Jeff Adrien" => {number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
    "Bismack Biyombo" => {number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
    "DeSagna Diop" => {number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
    "Ben Gordon" => {number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
    "Brendan Haywood" => {number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
    }
  }
  hash
end

  

def num_points_scored(name)
  if game_hash[:home][:players].keys.include?(name)
    game_hash[:home][:players][name][:points]
  elsif game_hash[:away][:players].keys.include?(name)
    game_hash[:away][:players][name][:points]
  end 
end

def shoe_size(name)
  if game_hash[:home][:players].keys.include?(name)
    game_hash[:home][:players][name][:shoe]
  elsif game_hash[:away][:players].keys.include?(name)
    game_hash[:away][:players][name][:shoe]
  end 
end

def team_colors(team)
  game_hash.each do |k,v|
    if game_hash[k][:team_name] == team 
      return game_hash[k][:colors]
    end
  end
end

def team_names
  names = []
  game_hash.each do |k,v|
    
     names.push(game_hash[k][:team_name])
    
  end
  names
end

def player_numbers(team)
  
  game_hash.each do |key, value|
    if game_hash[key][:team_name] == team 
      numbers = []
      game_hash[key][:players].each do |player, num|
        number = num[:number]
        numbers.push(number)
      end
      numbers.sort
    end
  end
end