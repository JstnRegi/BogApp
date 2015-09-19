class CreaturesController < ApplicationController
  def index
  	@creatures = Creature.all
  end

  def new
  	@creature = Creature.new
  end

  def create
  	new_creature = params.require(:creature).permit(:name, :description)
    creature = Creature.create(new_creature)
    redirect_to "/creatures/#{creature.id}"
  end

  #used for displaying the newly created creature
  def show
  	id = params[:id]
  	@creature = Creature.find(id)
  end

  #used for displaying the edited creature
  def edit
  	id = params[:id]
  	@creature = Creature.find(id)
  end

  def update
  	creature_id = params[:id]
  	creature = Creature.find(creature_id)

  	#gets updated data
	updated_attributes = params.require(:creature).permit(:name, :description)
	#updates the creature
	creature.update_attributes(updated_attributes)

	redirect_to "/creatures/#{creature.id}"
  end

  def destroy
  	id = params[:id]
  	creature = Creature.find(id)
  	creature.destroy
  	redirect_to "/creatures"
  end
end
