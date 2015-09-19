class CreaturesController < ApplicationController
  def index
  	@creatures = Creature.all
  end

  def new
  	@creature = Creature.new
  end

  def create
  	new_creature = params.require(:creature).permit(:name, :description)
    Creature.create(new_creature)
    redirect_to "/creatures"
  end
end
