class BackendController < LoginController
before_action :logdin, only: [:menu, :destroyarticle]

def menu
@articles = Article.all
end
def destroyarticle
@theid = params[:id].to_i
@article = Article.find(@theid)
@article.destroy
respond_to do |f|
	f.js
end
end

def login
admin = Admin.find_by(username: params[:user])
if admin && admin.authenticate(params[:pass])
session[:admin] = admin.username
redirect_to backend_menu_path
else
redirect_to backend_start_path
end
end
end