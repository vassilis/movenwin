class WelcomeController < ApplicationController
	before_action :authenticate_user!
  def index
		render layout: "welcome"
  end
end
