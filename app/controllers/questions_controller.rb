

class QuestionsController < ApplicationController

  def index
    # @questions = Question.all
    @q = Question.first
    redirect_to @q
  end

  def show
    @question = Question.find(params[:id])
  end

end
