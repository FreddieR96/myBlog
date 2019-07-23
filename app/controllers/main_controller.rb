class MainController < ApplicationController
def home
@lastarticle = Article.last
@twoarticles = Article.order("id DESC").offset(1).first(2)
@fourarticles = Article.order("id DESC").offset(3).first(4)
@columnstop = 0
end
def archive
@articles = Article.all
end

end