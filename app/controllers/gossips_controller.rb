class GossipsController < ApplicationController


  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def top_geeks
    @top_geeks = Geek.order(:rank).limit(5)
    @potins = Potin.top_geeks_method
  end
  
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to gossips_path, notice: 'Gossip créé avec succès!'
    else
      render :new
    end
  end

  private

  def gossip_params
    params.require(:gossip).permit(:content, :year)
  end



  def shared_gossips
    @gossips = Gossip.all
  end


  def create
    writer = Writer.create(name: params[:gossip][:writer_name])
    content = Content.create(text: params[:gossip][:content_text])

    gossip = Gossip.new
    gossip.writer = writer
    gossip.content = content

    if gossip.save
      redirect_to shared_gossips_path, notice: 'Potin partagé avec succès!'
    else
      render :new
    end
  end

end




