def get_first_name_of_season_winner(data, season)
  winner = data[season].select do |contestant|
    contestant["status"] == "Winner"
  end

  winner.first["name"].split.first
end

def get_contestant_name(data, occupation)
  data.each do |season_string, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end

  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_hash|
    contestant_hash.each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  contestants = 0

  data[season].each do |contestant_hash|
    contestants += 1
    age += contestant_hash["age"].to_i
  end

  (age / contestants.to_f).round
end
