class UsersController < ApplicationController
  def scan_ticket
  end

  def add_points
    respond_to do |format|
      current_user.add_points(10)
      current_user.save
      format.html { redirect_to root_path, notice: 'Οι πόντοι σας καταχωρήθηκαν επιτυχώς.' }
      format.json { render :show, status: :ok, location: @user }
    end
  end

  def remove_points
  end

end
