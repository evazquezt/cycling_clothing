class Apparel < ActiveRecord::Base

  scope :clothing_for_condition, -> (min_column, max_column, temp) { where("#{min_column} <= #{temp} AND #{max_column} >= #{temp}") }

  COMBINATIONS = [
    {
      wind: "Calm",
      condition: "Sunny",
      min_key: "min1",
      max_key: "max1"
    },
    {
      wind: "Calm",
      condition: "Cloudy",
      min_key: "min2",
      max_key: "max2"
    },
    {
      wind: "Calm",
      condition: "Rainy",
      min_key: "min3",
      max_key: "max3"
    },
    {
      wind: "Light",
      condition: "Sunny",
      min_key: "min4",
      max_key: "max4"
    },
    {
      wind: "Light",
      condition: "Cloudy",
      min_key: "min5",
      max_key: "max5"
    },
    {
      wind: "Light",
      condition: "Rainy",
      min_key: "min6",
      max_key: "max6"
    },
    {
      wind: "Breezy",
      condition: "Sunny",
      min_key: "min7",
      max_key: "max7"
    },
    {
      wind: "Breezy",
      condition: "Cloudy",
      min_key: "min8",
      max_key: "max8"
    },
    {
      wind: "Breezy",
      condition: "Rainy",
      min_key: "min9",
      max_key: "max9"
    }
  ]

  def Apparel.find_combination(wind, condition)
    COMBINATIONS.each do |combo|
      if combo[:wind] == wind && combo[:condition] == condition
        return combo
      end
    end
  end

  def Apparel.find_clothing_for_condition(wind, condition, temp)
    combo = Apparel.find_combination(wind, condition)
    Apparel.clothing_for_condition(combo[:min_key], combo[:max_key], temp)
  end


end
