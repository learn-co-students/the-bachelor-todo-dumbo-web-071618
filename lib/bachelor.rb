def get_first_name_of_season_winner(data, season)
  # Need to return first name of that season winner
  data[season].each do |contestants_data|
    if contestants_data["status"].downcase == "winner"
      return contestants_data["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |contestants_data|
      if contestants_data["occupation"] == occupation
        return contestants_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestants_data|
      if contestants_data["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter 
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestants_data|
      if contestants_data["hometown"] == hometown
        return contestants_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  divisor = data[season].length
  data[season].each do |contestants_data|
    sum += contestants_data["age"].to_f
  end
  #puts sum 
  #puts divisor
  #puts sum / divisor
  #puts (sum / divisor).round(0)
  return (sum / divisor).round(0)
end


