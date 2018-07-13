require 'pry'
def get_first_name_of_season_winner(data, season)
    data[season].each do |name|
    if name["status"] == "Winner"
    return name["name"].split(" ")[0]
    end    
    end  
end

def get_contestant_name(data, occupation)
  data.each do |season, hash|
    hash.each do |person|
    if person["occupation"] == occupation
    return person["name"]
    end
    end
    end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, hash|
    hash.each do |person|
      if person["hometown"] == hometown
      counter += 1
      end
    end
  end
  return counter
end  
  
def get_occupation(data, hometown)
  data.each do |season, hash|
    hash.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end  
end

def get_average_age_for_season(data, season)
  age_array = []
  age_variable = 0
      data[season].each do |person|
      age_array << person["age"].to_f
      age_variable = person["age"].to_f + age_variable
      end
return (age_variable / age_array.size).round
end     
  