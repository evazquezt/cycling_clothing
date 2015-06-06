class ApparelsController < ApplicationController

  def index
    @apparels = Apparel.all
  end

  def show
    @apparel = Apparel.find_by(id: params[:id])
  end

  def new
  end

  def create
    @apparel = Apparel.new
    @apparel.section = params[:section]
    @apparel.item = params[:item]
    @apparel.description = params[:description]
    @apparel.min1 = params[:min1]
    @apparel.max1 = params[:max1]
    @apparel.min2 = params[:min2]
    @apparel.max2 = params[:max2]
    @apparel.min3 = params[:min3]
    @apparel.max3 = params[:max3]
    @apparel.min4 = params[:min4]
    @apparel.max4 = params[:max4]
    @apparel.min5 = params[:min5]
    @apparel.max5 = params[:max5]
    @apparel.min6 = params[:min6]
    @apparel.max6 = params[:max6]
    @apparel.min7 = params[:min7]
    @apparel.max7 = params[:max7]
    @apparel.min8 = params[:min8]
    @apparel.max8 = params[:max8]
    @apparel.min9 = params[:min9]
    @apparel.max9 = params[:max9]

    if @apparel.save
      redirect_to apparels_url, notice: "Apparel created successfully."
    else
      render 'new'
    end
  end

  def edit
    @apparel = Apparel.find_by(id: params[:id])
  end

  def update
    @apparel = Apparel.find_by(id: params[:id])
    @apparel.section = params[:section]
    @apparel.item = params[:item]
    @apparel.description = params[:description]
    @apparel.min1 = params[:min1]
    @apparel.max1 = params[:max1]
    @apparel.min2 = params[:min2]
    @apparel.max2 = params[:max2]
    @apparel.min3 = params[:min3]
    @apparel.max3 = params[:max3]
    @apparel.min4 = params[:min4]
    @apparel.max4 = params[:max4]
    @apparel.min5 = params[:min5]
    @apparel.max5 = params[:max5]
    @apparel.min6 = params[:min6]
    @apparel.max6 = params[:max6]
    @apparel.min7 = params[:min7]
    @apparel.max7 = params[:max7]
    @apparel.min8 = params[:min8]
    @apparel.max8 = params[:max8]
    @apparel.min9 = params[:min9]
    @apparel.max9 = params[:max9]

    if @apparel.save
      redirect_to apparels_url, notice: "Apparel updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @apparel = Apparel.find_by(id: params[:id])
    @apparel.destroy

    redirect_to apparels_url, notice: "Apparel deleted."
  end
end
