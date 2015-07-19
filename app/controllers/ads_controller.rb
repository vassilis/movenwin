class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def add_points
    @ad = Ad.find(params[:id])
    points = @ad.weight
    respond_to do |format|
      current_user.add_points(points)
      current_user.save
      format.html { redirect_to root_path, notice: 'Οι πόντοι σας καταχωρήθηκαν επιτυχώς.' }
      format.json { render :show, status: :ok, location: @user }
    end
  end
end
