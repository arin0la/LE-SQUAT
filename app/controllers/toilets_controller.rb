class ToiletsController < ApplicationController
  def show
    @toilets = Toilet.all
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.save
    redirect_to toilet_path(@toilet)
  end

  private

  def toilet_params
    params.require(:toilet).permit(:name, :description, :price)
  end
end
