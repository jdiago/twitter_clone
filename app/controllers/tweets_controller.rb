class TweetsController < ApplicationController
  def home
    @tweets = Tweet.order('created_at desc')
  end

  def status
    @tweet = Tweet.find(params[:id])
  end

  def create
    Tweet.create(params.require(:tweet).permit(:body))
    redirect_to home_path
  end
end
