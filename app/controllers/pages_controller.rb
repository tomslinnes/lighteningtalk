class PagesController < ApplicationController

 @wins =0
  @losses=0
  @tie=0

  

  def users_browser
user_agent=request.env['HTTP_USER_AGENT'].downcase
@users_browser ||= begin
  if user_agent.index('iphone')
       'iphone'
    #Everything thinks it's mozilla, so this goes last
    elsif user_agent.index('mozilla/')
        'gecko'
  else
      'unknown'
  end
  end
return @users_browser
end

 
  def start
  if users_browser=="iphone"
  redirect_to "/home"
  else
  redirect_to "/home1" 
  end
  end



  def home1
  end


  def home 
  end

  def play  
  @wins =0
  @losses=0
  @tie=0
  end


    def playwithstats
  
  
 @wins=params[:wins].to_i
@losses=params[:losses].to_i
@tie=params[:ties].to_i
  @defeat={SCISSORS: :PAPER, PAPER: :ROCK, ROCK: :LIZARD, ROCK: :SCISSORS}
  @throws=@defeat.keys
  @player_throw=params[:selected_value].to_sym
  @computer_throw=@throws.sample
  
  if @player_throw==@computer_throw
   @result="TIE"
  elsif @computer_throw == @defeat[@player_throw]
    @result="WON"
  else @player_throw == @defeat[@computer_throw]
    @result="LOST"
  end
  
  
	if @result=="WON"
	@wins =@wins + 1

	elsif @result == "LOST"
	@losses =@losses + 1

	else @result == "TIE"
	@tie = @tie + 1
end


  
  end

  
  def playwithstats1
   @title = "Tie"
  
  @wins=params[:wins].to_i
  @losses=params[:losses].to_i
  @tie=params[:ties].to_i
  end

end
