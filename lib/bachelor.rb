def get_first_name_of_season_winner(data, season)
  def get_first_name_of_season_winner(bachelor, string)
string = string.to_sym
bachelor.each do |season_number, seasons_hash| 
  seasons_hash.each do |contestant|
    if season_number == string
      if contestant[:status] == "Winner"
        return contestant[:name]
      end
    end
  end
end

end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
