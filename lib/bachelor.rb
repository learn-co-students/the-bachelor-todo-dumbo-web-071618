require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestant_data_array|
    if season_number == season
      contestant_data_array.each do |contestant_data|
        contestant_data.each do |label, detail|
          if detail == "Winner"
            contestant_data.each do |label, detail|
              return detail.split(" ")[0]
            end
          end
        end
      end
    end
  end
end

def get_contestant_name (data, occupation)
  data.each do |season_number, contestant_data_array|
    contestant_data_array.each do |contestant_data|
      contestant_data.each do |label, detail|
        if occupation == detail
          contestant_data.each do |label, detail|
            return detail
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestants_in_hometown = 0
  data.each do |season_number, contestant_data_array|
    contestant_data_array.each do |contestant_data|
      contestant_data.each do |label, detail|
        if hometown == detail
          contestants_in_hometown += 1
        end
      end
    end
  end
contestants_in_hometown
end

def get_occupation(data, hometown)
  data.each do |season_number, contestant_data_array|
    contestant_data_array.each do |contestant_data|
      contestant_data.each do |label, detail|
        if hometown == detail
          contestant_data.each do |label, detail|
            if label == "occupation"
              return detail
            end
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  number_of_people = 0
  data.each do |season_number, contestant_data_array|
    if season_number == season
      contestant_data_array.each do |contestant_data|
        contestant_data.each do |label, detail|
          if label == "age"
            age_total = age_total + detail.to_f
            number_of_people += 1
          end
        end
      end
    end
  end
(age_total / number_of_people).round
end
