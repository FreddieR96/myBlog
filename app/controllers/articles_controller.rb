class ArticlesController < LoginController
before_action :logdin, except: [:show]
before_action :find_article, only: [:show, :edit]

def new
@article = Article.new
render layout: "backend"
end
def create
@article = Article.create(article_params)
respond_to do |f|
if @article.save
	Email.all.each do |f|
	ArticleMailer.with(article: @article, address: f.emailstring).article_email.deliver!
	end
	f.html { redirect_to backend_menu_path }
else
	f.html { render 'new', layout: "backend" }
end
end
end
def edit
render layout: "backend"
end
def update
@article = Article.find(params[:abv_title])
respond_to do |f|
if @article.update(article_params)
	f.html { redirect_to backend_menu_path }
else
	f.html { render 'edit' }
end
end
end
def show

end


def find_article
@article = Article.find_by(abv_title: params[:abv_title])
end

private
def article_params
params.require(:article).permit(:title, :abv_title, :paragraph1, :paragraph2, :paragraph3, :paragraph4, :display_pic, :pic1, :pic2)
end
end