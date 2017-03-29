class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
    # @name_batman = params[:name_batman]
    # @email_batman = params[:email_batman]
    # @votosbatman = Votosbatman.new(name:@name_batman, email:@email_superman)
    # @votosbatman.save
    #
    # @name_superman = params[:name_superman]
    # @email_superman = params[:email_superman]
    # @votossuperman = Votossuperman.new(name:@name_superman, email:@email_superman)
    # @votossuperman.save
    @totalbatman = Votosbatman.count
    @totalsuperman = Votossuperman.count
  end

  def save_batmanfan
  Votosbatman.create(name: params[:name_batman], email: params[:email_batman])
  redirect_to pages_batman_vs_superman_path, notice: "Your vote for Batman was registered correctly."
  end

  def save_supermanfan
  Votossuperman.create(name: params[:name_superman], email: [:email_superman])
    redirect_to pages_batman_vs_superman_path, notice: "Your vote for Superman was registered correctly."
  end

  # def count_batmanfans
  # @batmanfans = Votosbatman.all
  # @total_batmanfans = @batmanfans.count
  # end
  #
  # def count_batmanfans
  # @supermanfans = Votossuperman.all
  # @total_supermanfans = @supermanfans.count
  # end

end
