class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to character_path(@character.id)
    else
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def index
    @characters = Character.all
  end

  private
  def character_params
    params.require(:character).permit(:character_name, :password, :password_confirmation, :profile_author, :encounter, :personality, :good_point, :respect_point, :episode, :appreciation, :appreciation_from_bride)
  end
end
