class Api::GamesController < ApplicationController

  def query_params_action
    @name =  params["name"].upcase
    if @name.start_with?("a")
      @message =  "Hey, your name starts with first letter of the alphabet!" 
    end
    render 'query_params.json.jb'
  end

  def query_numbers_action
    @correct_num = 25
    @number = params[:number]
    if @number.to_i > @correct_num.to_i
      @message = "lower!"
    elsif @number.to_i < @correct_num.to_i
      @message = "higher!"
    elsif @number.to_i == @correct_num.to_i
      @message = "you got it!"
    end

    render 'numbers.json.jb'
  end

  def body_params_action
    @correct_num = 25
    @number = params[:number]
    if @number.to_i > @correct_num.to_i
      @message = "lower!"
    elsif @number.to_i < @correct_num.to_i
      @message = "higher!"
    elsif @number.to_i == @correct_num.to_i
      @message = "you got it!"
    end
    render 'body_params.json.jb'
  end

  def body_user_password
    @username = params[:username]
    @password = params[:password]
    if @username == "hugh" && @password == "swordfish"
      @message = "Valid credentials"
    else
      @message = "Invalid credentials"
    end
    render 'body_password.json.jb'
  end

end
