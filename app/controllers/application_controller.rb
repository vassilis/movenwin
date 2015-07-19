class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource


  def after_sign_in_path_for(resource)
		if resource.is_a?(Admin)
			admin_path
    elsif resource.is_a?(Merchant)
      merchant_path
		else
			root_path
		end
	end

	def after_sign_out_path_for(resource_or_scope)
		root_path
	end

  protected

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "admin"
    elsif devise_controller? && resource_name == :admin
      "merchant"
    else
      "application"
    end
  end

end
