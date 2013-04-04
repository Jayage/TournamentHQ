class Users::RegistrationsController < Devise::RegistrationsController

# app/controllers/users_controller.rb
# GET /users/new
def new
  Textcaptcha.configure do |config|
    config.api_key = '19eln3dpeu4kk4cksggowk484e7jhcz0'
  end

  captcha                   = Textcaptcha.obtain
  session[:captcha_answers] = captcha[:answers]
  @captcha_question         = captcha[:question]
  @user                     = User.new
end

# POST /users
def create
  user = User.new(params[:user])
  if Textcaptcha.valid?(params[:captcha_answer], session[:captcha_answers]) && user.save
    # ...
  end
end