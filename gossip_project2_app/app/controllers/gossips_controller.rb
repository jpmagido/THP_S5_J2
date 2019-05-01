class GossipsController < ApplicationController
  def index
  	@gossip = Gossip.all 
  end

  def create

@gossip = Gossip.new(title: "#{params[:title]}", content: "#{params[:gossip_1]}", user_id: 4)
@gossip.save


=begin
  if @gossip.errors.any?
    redirect_to {gossips_new_path}
    puts "*"*60
    puts "c'est pas bon"
    puts "*"*60
  else
    #render :text => "error 404"
    puts "*"*60
    puts "c'est bon"
    puts "*"*60 
    end
=end
  end
  def done
    

  end

  def new

  end

  def edit
  end

  def show
	@id_lien = params[:id]
	@gossip = Gossip.all 
  end
end

