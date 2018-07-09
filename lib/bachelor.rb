require 'pry'

def get_first_name_of_season_winner(data, season)
  
  name = ""
  
  data.each do |season_number, contestant_array|
    if season == season_number 
      contestant_array.each do |contestant|
        
        contestant.each do |category, info|
          if category == "name"
            name = info.split(' ') 
          end
          if category == "status" && info.downcase == "winner"
            return name[0]
          end
        end
      end
    end
  end
  
end

def get_contestant_name(data, occupation)
  name = ""
  
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |category, info|
        name = info if category == "name"
        return name if info == occupation
      end
    end
  end
  
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 

  data.each do |season_number, contestant_array|
  
    contestant_array.each do |contestant|
      
      contestant.each do |category, info|
        counter += 1 if info == hometown
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  bool = false 
  occupation = ""
  data.each do |season_number, contestant_array|
  
    contestant_array.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0.0
  counter = 0.0
  
  data.each do |season_number, contestant_array|
    if season_number == season 
      contestant_array.each do |contestant|
        
        contestant.each do |category, info|
          sum += info.to_f if category == "age"
          
        end
        counter += 1.0 
      end
    end
  end
  avg = (sum / counter).round 
end
