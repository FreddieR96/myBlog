class LoginController < ApplicationController
def logdin
	if session[:admin].present?
	return true
	else
	redirect_to backend_start_path
end
end
end
