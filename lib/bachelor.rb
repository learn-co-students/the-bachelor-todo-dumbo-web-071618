def get_first_name_of_season_winner(data, season)
  data.each do |season_number,array_of_contestants|
    if season_number == season
      array_of_contestants.each do |hash_of_contestants|
        if hash_of_contestants["status"] == "Winner"
          return hash_of_contestants["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,array_of_contestants|
    array_of_contestants.each do |hash_of_contestants|
      if hash_of_contestants["occupation"] == occupation
        return hash_of_contestants["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.values.each do |array_of_contestants|
    array_of_contestants.each do |hash_of_contestants|
      hash_of_contestants["hometown"] == hometown ? counter += 1 : counter
    end
  end
  counter
end

def get_occupation(data, hometown)
  all_occupations_from_hometown = []
  data.values.flatten.each do |hash_of_contestants|
    hash_of_contestants.each do |attribute,value|
      if value == hometown
        all_occupations_from_hometown << hash_of_contestants["occupation"]
      end
    end
  end
  all_occupations_from_hometown.first
end

def get_average_age_for_season(data, season)
  age = 0
  data.each do |season_num, array_of_contestants|
    if season_num == season
      array_of_contestants.each do |hash_of_contestants|
        age += hash_of_contestants["age"].to_f
      end
      count = array_of_contestants.size
      return (age/count).round
    end
  end
end
