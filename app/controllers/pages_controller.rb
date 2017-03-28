class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
    @name_batman = params[:name_batman]
    @email_batman = params[:email_batman]
    @votosbatman = Votosbatman.new(name:@name_batman, email:@email_superman)
    @votosbatman.save

    @name_superman = params[:name_superman]
    @email_superman = params[:email_superman]
    @votossuperman = Votossuperman.new(name:@name_superman, email:@email_superman)
    @votossuperman.save

  end

  def save_batmanfan
  Votosbatman.create(name: params[:name_batman], email: params[:email_batman])
  end

  def save_supermanfan
  Votossuperman.create(name: params[:name_superman], email: [:email_superman])
  end

end
