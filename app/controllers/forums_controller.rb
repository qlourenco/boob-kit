class ForumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create ]

  def index
    @forums = Forum.all
    @forum = Forum.new
  end
 
  def create
    @forum = Forum.new(forum_params)
    @forum.save
    redirect_to forums_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to forums_path
  end

  private

  def forum_params
    params.require(:forum).permit(:pseudo, :age, :commentaire)
  end
end
