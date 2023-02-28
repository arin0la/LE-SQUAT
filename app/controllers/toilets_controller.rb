class ToiletsController < ApplicationController
  before_action create:

  def show
    @toilet = Toilet.find(params[:id])
  end

  def index
    @toilets = Toilet.all
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.save!
    redirect_to toilet_path(@toilet)
  end

  private

  def set_toilet_id
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:name, :description, :price)
  end
end
