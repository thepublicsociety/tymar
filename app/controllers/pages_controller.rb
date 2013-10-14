class PagesController < ApplicationController
  before_filter :social
  def index
  end
  def about
  end
  def trailer
  end
  def join
    @events = Event.find(:all, :order => "start asc")
    @groups = Group.find(:all, :order => "name asc")
  end
  def press
    @releases = Release.find(:all, :order => "created_at desc")
    @coverages = Coverage.find(:all, :order => "publish_date asc")
    @photographs = Photograph.find(:all)
  end
  def secret_content
    @secrets = Secret.find(:all, :order => "publish_date desc")
    @blogs = Blog.all
    if cookies[:secret_content_password] == "Secret!"
      render "revealed_content"
    else
      render "secret_content"
    end
  end
  def secret_password
    @secrets = Secret.find(:all, :order => "publish_date desc")
    @blogs = Blog.all
    @password = params[:password]
    cookies[:secret_content_password] = @password
  end
  
  def secret_email
    address = params[:email]
    password = "Secret!"
    link = "http://development0.metatroid.com/secret-content"
    SendMail.send_mail(address, "Secret Content", "Password: \"#{password}\"\n\n\n\nURL: #{link}").deliver
    redirect_to root_path
  end
  
  def secret_selection
    @secret = Secret.find(params[:id])
  end
  
  def auth
    auth_details = request.env['omniauth.auth']
    if auth_details["provider"] == "facebook"
      token = auth_details["credentials"]["token"]
      expires = auth_details["credentials"]["expires_at"]
      if current_user == User.find(1)
        User.find(1).update_attributes(:ftoken => token, :fuid => auth_details["uid"], :flink => auth_details["info"]["urls"]["Facebook"], :fexpires_at => expires)
      end
      graph = Koala::Facebook::API.new(token)
      action = cookies[:fb_action]
      id = cookies[:fb_id]
      if action == "like"
        graph.put_like(id)
        cookies[:fb_action] = ""
      end
    else
      secret = auth_details['credentials']['secret']
      token = auth_details['credentials']['token']
      action = cookies[:tweet_action]
      id = cookies[:tweet_id]
      client = Twitter::Client.new(
        :consumer_key => "VmUFzBCk13ivJADuDKLeSA",
        :consumer_secret => "6qitbysxpmXzWlRE9qsmFuIGOiZu8H5UnEvusUbw",
        :oauth_token => token,
        :oauth_token_secret => secret
      )
      if action == "retweet"
        client.retweet(id)
        cookies[:tweet_action] = ""
      elsif action == "favorite"
        client.favorite(id)
        cookies[:tweet_action] = ""
      end
    end
    redirect_to root_path
  end
  
  private
  def social
    client = Twitter::Client.new(
      :consumer_key => "VmUFzBCk13ivJADuDKLeSA",
      :consumer_secret => "6qitbysxpmXzWlRE9qsmFuIGOiZu8H5UnEvusUbw",
      :oauth_token => "1245456781-FNLCiQW279Bus9DERsqeIkt0IOf3lH8fKcSMVe2",
      :oauth_token_secret => "aE63mTy0dv09G8Ifu7YCVA1pTZDIpgePqVoMMOMK92I"
    )
    @tweets = client.user_timeline("theyesmen", :count => 3)
    unless User.find(1).ftoken.blank?
      begin
        fb_token = User.find(1).ftoken
        @graph = Koala::Facebook::API.new(fb_token)
        @facebook = @graph.get_connections("me", "feed")[0..1]
      rescue Koala::Facebook::APIError
        @facebook = [{"story" => "Error Parsing Facebook Feed", "created_time" => Time.now+1.minute}]
      end
    else
      @facebook = []
    end
  end
end
