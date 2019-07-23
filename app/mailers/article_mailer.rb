class ArticleMailer < ApplicationMailer

def article_email
@article = params[:article]
@address = params[:address]
mail(to: @address, subject: "New article on Frodhoblog")
end
end
