

class QuestionsController < ApplicationController

  def index
    # @questions = Question.all
    @q = Question.first
    redirect_to @q
  end

  def show
    @question = Question.find(params[:id])
  end

  def add_points
    respond_to do |format|
      current_user.add_points(10)
      current_user.save
      format.html { redirect_to root_path, notice: 'Οι πόντοι σας καταχωρήθηκαν επιτυχώς.' }
      format.json { render :show, status: :ok, location: @user }
    end
  end

end
