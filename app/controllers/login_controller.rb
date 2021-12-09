class LoginController < ApplicationController
  def new
  end

  def create
       if user = User.authenticate(params[:name], params[:password])
            session[:user_id] = user.id
            redirect_to home_home_url
        else
            redirect_to login_url, :alert => "ユーザ名/パスワードはエラーです！"
        end
  end

  def destroy
        session[:user_id] = nil
        redirect_to '/', :notice => "ログアウト"
  end
end