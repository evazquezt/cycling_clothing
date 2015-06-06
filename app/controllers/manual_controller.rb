class ManualController < ApplicationController

  def conditions
    temp = params[:weather]
    wind = params[:wind]
    condition = params[:condition]
    if temp && wind && condition
      @articles_by_section = Apparel.find_clothing_for_condition(wind, condition, temp).group_by(&:section)
    else
      @articles_by_section = []
    end
  end

end
