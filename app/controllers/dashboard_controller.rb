class DashboardController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
    @lessons = Lesson.all
    @events = Event.all
  end
end
