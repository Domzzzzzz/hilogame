class MainController < ApplicationController

  # def try
  #   @your_num = params[:number]
  #   @num = Random.rand(100)
  #   session[:secretnum] = @num unless session[:secretnum].nil?
  #   if params[:number].to_i < @num
  #     @result_string = "too low"
  #   elsif params[:number].to_i > @num
  #     @result_string = "too high"
  #   else
  #     @result_string = "correct"
  #   end # end if
  #   render "try.html.erb"
  #
  # end # end of method

  def answers
    @secretnum = 45
    @result_string
    @your_num = params[:number]
    
    if params.has_key?(:user_name) && !params[:user_name].strip.empty?
      cookies[:name] = params[:user_name]
    end
    @user_name = cookies[:name]

    if params[:number].to_i < @secretnum
      @result_string = "too low"
    elsif params[:number].to_i > @secretnum
      @result_string = "too high"
    else
      @result_string = "correctamundo"
    end

    render "try.html.erb"
  end #end of method

end #end of class
