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

  def invite

  end

  def give_points
  end

  def send_invitation
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Η πρόσκληση εστάλη.' }
      format.json { render :show, status: :ok, location: @user }
    end
  end

  def remove_points
    respond_to do |format|
      current_user.remove_points(params[:points])
      current_user.save
      format.html { redirect_to root_path, notice: 'Η αποστολή πόντων ολκληρώθηκε. Οι πόντοι θα αφαιρεθούν οταν γίνει αποδοχή.' }
      format.json { render :show, status: :ok, location: @user }
    end
  end

end
