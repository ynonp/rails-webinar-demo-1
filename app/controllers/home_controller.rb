class HomeController < ApplicationController
  before_action :prepare_links, only: [:homepage, :like, :unlike]

  def homepage
  end

  def like
    link = Link.find(params[:link_id])
    Like.create!(user: current_user, link: link)
    render :homepage
  end

  def unlike
    link = Link.find(params[:link_id])
    like = Like.find_by(user: current_user, link: link)
    like.destroy
    render :homepage
  end

  def prepare_links
    @links = Link.with_likes_count.order('likes_count desc').limit(10)
  end
end
